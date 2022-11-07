import 'dart:convert';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:payu_checkoutpro_flutter/PayUConstantKeys.dart';
import 'package:payu_checkoutpro_flutter/payu_checkoutpro_flutter.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/application/payment/payment_bloc.dart';
import 'package:savings_deposit/application/splash/splash_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/core/payment/hash_service.dart';
import 'package:savings_deposit/core/payment/payu_config_params.dart';
import 'package:savings_deposit/core/payment/payu_payment_keys.dart';
import 'package:savings_deposit/domain/calendar/success/success.dart';
import 'package:savings_deposit/domain/customer/models/customer_models.dart';
import 'package:savings_deposit/domain/login/models/login_model.dart';
import 'package:savings_deposit/injection.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/widgets/deposit_confirmed_dailog.dart';
import 'package:savings_deposit/presentation/pages/customer/new_sd_ac/widgets/dialog_boxes.dart/confirmed_msg.dart';
import 'package:savings_deposit/presentation/pages/customer/new_sd_ac/widgets/newsd_widgets/custom_textfield.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/widgets/customised_appbar/customised_appbar.dart';
import 'package:uuid/uuid.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage>
    implements PayUCheckoutProProtocol {
  late PayUCheckoutProFlutter _checkoutPro;
  TextEditingController emailController = TextEditingController();

  final _emailKey = GlobalKey<FormState>();
  String? _amount;
  String? _productInfo;
  String? _accountNumber;
  PaymentState? _paymentState;
  CustomerState? _customerState;
  LoginDetails? _loginDetails;
  final unSelectedColor = const Color.fromARGB(255, 46, 108, 50);
  final selectedColor = Colors.green;
  @override
  void initState() {
    // getIt<Razorpay>().on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    // getIt<Razorpay>().on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    // getIt<Razorpay>().on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    _checkoutPro = PayUCheckoutProFlutter(this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentBloc, PaymentState>(
      listener: (context, state) {
        state.startPaymentFailureOrSuccessOption.fold(() {}, (a) {
          a.fold((failure) {
            Flushbar(
              message: failure.map(
                  clientFailure: (e) => "",
                  serverFailure: (_) => "Something went wrong"),
            ).show(context);
          }, (success) {});
        });
      },
      builder: (context, state) {
        _customerState = context.read<CustomerBloc>().state;
        _loginDetails = context.read<LoginBloc>().state.loginDetails;
        _paymentState = context.read<PaymentBloc>().state;
        final branchId = _loginDetails!.branchId;
        final customerId = _loginDetails!.customerId;
        final firmId = _loginDetails!.firmId;

        /////// checking payment deposit or newsd/////////////
        if (_customerState!.depositPage!) {
          _amount = _customerState!.depositAmount;
          _accountNumber = _customerState!
              .customerActiveAccounts![_customerState!.accountCardIndex]
              .accountNumber;
          _productInfo = "deposit";
        } else {
          _amount = _customerState!.newSdamount;
          _accountNumber = "0";
          _productInfo = "NewSd";
        }
        CustomerProfileModel? _profile = _customerState!.customerProfile!;
        bool emailNotExist =
            _profile.emailId == null || !_profile.emailId!.contains("@");
        return Scaffold(
          appBar: customizedAppBar(context),
          body: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: Center(
              child: ListView(
                children: [
                  Column(
                    children: [
                      const Text(
                        "Payment",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      kHeight30,
                      Text(
                        "₹ $_amount",
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 21, 127, 24)),
                      ),
                      const Text(
                        "Entered amount",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      kHeight20,
                      paymentModeExpansion(
                        buttonColor: state.paymentMode == "DC"
                            ? selectedColor
                            : unSelectedColor,
                        buttonLabel: "Debit Card",
                        description:
                            " ${state.transactionCharges![1].chargeRate} percent will be deducted for transactions \n more than ₹${state.transactionCharges![0].maxAmount} ",
                        groupValue: state.paymentMode!,
                        radioLabel: "Debit Card",
                        value: "DC",
                        radioOnChanged: (value) {
                          context.read<PaymentBloc>().add(
                              PaymentEvent.selectPaymentMode(value: value!));
                          context.read<PaymentBloc>().add(
                              PaymentEvent.calculatePaymentPayableAmount(
                                  amount: _amount!, paymentMode: value));
                        },
                      ),
                      kHeight5,
                      paymentModeExpansion(
                        buttonColor: state.paymentMode == "NB"
                            ? selectedColor
                            : unSelectedColor,
                        buttonLabel: "Net Banking",
                        description:
                            "₹ ${state.transactionCharges![2].chargeAmount} will be extra deduct for net banking option",
                        groupValue: state.paymentMode!,
                        radioLabel: "Net Banking",
                        value: "NB",
                        radioOnChanged: (value) {
                          context.read<PaymentBloc>().add(
                              PaymentEvent.selectPaymentMode(value: value!));
                          context.read<PaymentBloc>().add(
                              PaymentEvent.calculatePaymentPayableAmount(
                                  amount: _amount!, paymentMode: value));
                        },
                      ),
                      kHeight20,
                      AutoSizeText(
                        "₹ ${state.paymentPayableAmonut!}",
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 21, 127, 24)),
                      ),
                      Text(
                        _customerState!.depositPage!
                            ? "Deposit amount"
                            : "New Savings Account",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  kHeight30,
                  emailNotExist
                      ? Column(
                          children: [
                            const Text(
                              "Email not linked , please enter your email id",
                              style: TextStyle(color: Colors.red),
                            ),
                            kHeight5,
                            CustomTextFormFled(
                                title: "email id",
                                validate: (value) {
                                  if (!isEmail(value!)) {
                                    return "Please enter a valid email";
                                  }
                                  return "";
                                },
                                controller: emailController,
                                formkey: _emailKey),
                          ],
                        )
                      : const SizedBox(),
                  kHeight50,
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0, right: 120),
                    child: MaterialButton(
                        color: Colors.green,
                        onPressed: () {
                          if (isEmail(emailController.text)) {
                            if (state.paymentPayableAmonut != 0) {
                              _checkoutPro.openCheckoutScreen(
                                  payUPaymentParams: {
                                    PayUPaymentParamKey.key:
                                        PayuPaymentKeys.merchantKey, //REQUIRED
                                    PayUHashConstantsKeys.postSalt:
                                        PayuPaymentKeys.salt,

                                    PayUPaymentParamKey.amount:
                                        state.paymentPayableAmonut, //REQUIRED
                                    PayUPaymentParamKey.productInfo:
                                        _productInfo, //REQUIRED
                                    PayUPaymentParamKey.firstName:
                                        _loginDetails!.customerName, //REQUIRED
                                    PayUPaymentParamKey.email: emailNotExist
                                        ? emailController.text
                                        : _profile.emailId!, //REQUIRED
                                    PayUPaymentParamKey.phone:
                                        _profile.mobileNumber1 ??
                                            _profile.mobileNumber2!, //REQUIRED
                                    PayUPaymentParamKey.android_surl:
                                        "https://mac.mactech.net.in/payutest/ResponseHandling.aspx",
                                    //REQUIRED
                                    PayUPaymentParamKey.android_furl:
                                        "https://mac.mactech.net.in/payutest/ResponseHandling.aspx", //REQUIRED
                                    PayUPaymentParamKey.environment:
                                        "1", //0 => Production 1 => Test

                                    PayUPaymentParamKey.transactionId:
                                        const Uuid().v1(), //REQUIRED
                                    PayUPaymentParamKey.additionalParam: {
                                      PayUAdditionalParamKeys.udf1: "udf1",
                                      PayUAdditionalParamKeys.udf2: "udf2",
                                      PayUAdditionalParamKeys.udf3: "udf3",
                                      PayUAdditionalParamKeys.udf4: "udf4",
                                      PayUAdditionalParamKeys.udf5: "udf5",
                                      // PayUAdditionalParamKeys.merchantAccessKey:
                                      //     PayUTestCredentials.merchantAccessKey,
                                      // PayUAdditionalParamKeys.sourceId: PayUTestCredentials.sodexoSourceId,
                                    },
                                  },
                                  payUCheckoutProConfig: createPayUConfigParams(
                                      state.paymentMode!));
                            } else {
                              showAlertDialog(context, "Can't take action!",
                                  "Please select your payment mode");
                            }
                          } else {
                            showAlertDialog(context, "Can't take action!",
                                "Please put your email id");
                          }

                          // context.read<PaymentBloc>().add(
                          //     PaymentEvent.logPaymentDetails(
                          //         firmId: firmId!,
                          //         branchId: branchId!,
                          //         moduleId: 2,
                          //         refId: "12345",
                          //         reqId: _paymentState!.orderResponse!.id,
                          //         docId: _accountNumber!,
                          //         customerId: customerId!,
                          //         transactioAmount: double.parse(_amount!),
                          //         refAmount: double.parse(_amount!),
                          //         gateWayMode: 1,
                          //         paymentMode: 1,
                          //         applicationFlag: 1,
                          //         prevCharge: 100,
                          //         serviceCharge: 50,
                          //         agentCode: 123,
                          //         customerName: _loginDetails!.customerName!));
                        },
                        child: const Text(
                          "Pay",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  bool isEmail(String value) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(p);
    bool abc = regExp.hasMatch(value);
    print(abc);
    return regExp.hasMatch(value);
  }

  Map createPayUConfigParams(String paymentMode) {
    var paymentModesOrder = [
      {"Wallets": "PHONEPE"},
      {"UPI": "TEZ"},
      {"Wallets": ""},
      {"EMI": ""},
      {"NetBanking": ""},
    ];

    var cartDetails = [
      {"GST": "5%"},
      {"Delivery Date": "25 Dec"},
      {"Status": "In Progress"}
    ];

    var debitCard = [
      {"payment_type": "CARD", "card_type": "DC"},
    ];

    var netBanking = [
      {"payment_type": "NB"}
    ];

    var upi = [
      {"payment_type": "UPI"}
    ];
    var enforcePaymentList = [];
    if (paymentMode == "DC") {
      enforcePaymentList = debitCard;
    } else if (paymentMode == "NB") {
      enforcePaymentList = netBanking;
    } else if (paymentMode == "upi") {
      enforcePaymentList = upi;
    }

    var payUCheckoutProConfig = {
      PayUCheckoutProConfigKeys.primaryColor: "#4994EC",
      PayUCheckoutProConfigKeys.secondaryColor: "#FFFFFF",
      PayUCheckoutProConfigKeys.merchantName: "PayU",
      PayUCheckoutProConfigKeys.merchantLogo: "logo",
      PayUCheckoutProConfigKeys.showExitConfirmationOnCheckoutScreen: true,
      PayUCheckoutProConfigKeys.showExitConfirmationOnPaymentScreen: true,
      PayUCheckoutProConfigKeys.cartDetails: cartDetails,
      PayUCheckoutProConfigKeys.paymentModesOrder: paymentModesOrder,
      PayUCheckoutProConfigKeys.merchantResponseTimeout: 30000,
      // PayUCheckoutProConfigKeys.customNotes: customNotes,
      PayUCheckoutProConfigKeys.autoSelectOtp: true,
      PayUCheckoutProConfigKeys.enforcePaymentList: enforcePaymentList,
      PayUCheckoutProConfigKeys.waitingTime: 30000,
      PayUCheckoutProConfigKeys.autoApprove: true,
      PayUCheckoutProConfigKeys.merchantSMSPermission: true,
      PayUCheckoutProConfigKeys.showCbToolbar: true,
    };
    return payUCheckoutProConfig;
  }

  // void _handlePaymentSuccess(
  //     PaymentSuccessResponse paymentSuccessResponse) async {
  //   //////loging payment success status
  //   context.read<PaymentBloc>().add(PaymentEvent.logPaymentStatus(
  //         refId: "12345",
  //         reqId: _paymentState!.orderResponse!.id,
  //         custId: _loginDetails!.customerId!,
  //         docId: _accountNumber!,
  //         transactionAmount: double.parse(_amount!),
  //         gatewayTransId: "gatewayTransId",
  //         confirmString: "Success",
  //         errorString: "",
  //         resString: "Success",
  //         resTransId: "trans1234",
  //         refAmount: double.parse(_amount!),
  //         gatewayMode: 1,
  //         paymentMode: 2,
  //         applicationFlag: 1,
  //         prevCharge: 100,
  //         serCharge: 50,
  //         agentMode: 123,
  //       ));
  //   if (_customerState!.depositPage!) {
  //     context.read<CustomerBloc>().add(
  //           CustomerEvent.deposit(
  //             accountNumber: _customerState!
  //                 .customerActiveAccounts![_customerState!.accountCardIndex]
  //                 .accountNumber,
  //             branchId: _loginDetails!.branchId,
  //             firmId: _loginDetails!.firmId,
  //             depositAmount: _customerState!.depositAmount,
  //             transactionMethod: _customerState!
  //                 .customerPaymentDetails![_customerState!.paymentCardIndex]
  //                 .paymentgatewayname,
  //             depositChequeNumber: "",
  //             depositCustomerBank: "",
  //             subsidiaryBank: "",
  //             subsidiaryAccountNumber: 0,
  //             customerName: _loginDetails!.customerName,
  //             empCode: 0,
  //             depositRealizationDate: DateTime.now(),
  //           ),
  //         );
  //     context.read<CustomerBloc>().add(CustomerEvent.fetchCustomerAccounts(
  //         customerId: _loginDetails!.customerId!));
  //     await depositConfirmedDailog(
  //         context, context, _customerState!.customerActiveAccounts!);
  //   } else {
  //     context.read<CustomerBloc>().add(CustomerEvent.newSdPostingValues(
  //         moduleId: context.read<SplashBloc>().state.splashModel!.moduleId,
  //         customerName: _loginDetails!.customerName!,
  //         firmId: _loginDetails!.firmId!,
  //         customerId: _loginDetails!.customerId!,
  //         subsidiaryAccountNo: 0));
  //     context.read<CustomerBloc>().add(CustomerEvent.fetchCustomerAccounts(
  //         customerId: _loginDetails!.customerId!));
  //     showDialog(
  //         context: context,
  //         builder: (BuildContext context) {
  //           return const NewSdConfirmedMessage();
  //         });
  //   }

  //   // context.router.push(const PaymentSuccessRoute());
  // }

  // void _handlePaymentError(PaymentFailureResponse paymentFailureResponse) {
  //   print("Payment failed");

  //   //////loging payment fail status
  //   context.read<PaymentBloc>().add(PaymentEvent.logPaymentStatus(
  //         refId: "12345",
  //         reqId: _paymentState!.orderResponse!.id,
  //         custId: _loginDetails!.customerId!,
  //         docId: _accountNumber!,
  //         transactionAmount: double.parse(_amount!),
  //         gatewayTransId: "gatewayTransId",
  //         confirmString: "Failed",
  //         errorString: "",
  //         resString: "Failed",
  //         resTransId: "trans1234",
  //         refAmount: double.parse(_amount!),
  //         gatewayMode: 1,
  //         paymentMode: 2,
  //         applicationFlag: 1,
  //         prevCharge: 100,
  //         serCharge: 50,
  //         agentMode: 123,
  //       ));
  //   context.read<PaymentBloc>().add(const PaymentEvent.paymentCancelled());
  //   if (paymentFailureResponse.code == Razorpay.PAYMENT_CANCELLED) {
  //     print("Payment failed");
  //   }
  // }

  // void _handleExternalWallet(ExternalWalletResponse externalWalletResponse) {
  //   //////// external wallet
  //   context.read<PaymentBloc>().add(PaymentEvent.logPaymentStatus(
  //         refId: "12345",
  //         reqId: _paymentState!.orderResponse!.id,
  //         custId: _loginDetails!.customerId!,
  //         docId: _accountNumber!,
  //         transactionAmount: double.parse(_amount!),
  //         gatewayTransId: "gatewayTransId",
  //         confirmString: "External wallet",
  //         errorString: "",
  //         resString: "External wallet",
  //         resTransId: "trans1234",
  //         refAmount: double.parse(_amount!),
  //         gatewayMode: 1,
  //         paymentMode: 2,
  //         applicationFlag: 1,
  //         prevCharge: 100,
  //         serCharge: 50,
  //         agentMode: 123,
  //       ));
  //   context.read<PaymentBloc>().add(const PaymentEvent.externalError());
  // }

  // void _handlePaymentCancel() {}
  showAlertDialog(BuildContext context, String title, String content) {
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(content),
            ),
            actions: [okButton],
          );
        });
  }

  @override
  generateHash(Map response) async {
    var hashName = response[PayUHashConstantsKeys.hashName];
    var hashStringWithoutSalt = response[PayUHashConstantsKeys.hashString];
    log(hashName);
    log(hashStringWithoutSalt);
    Map hashResponse = {};
    // if (response["hashName"] == "payment_source") {
    Map<String, dynamic> parameters = {
      "Type": "Payurequest",
      "Ver": 1.0,
      "Data": {
        "Data": {
          "Key": hashName.toString(),
          "Value": hashStringWithoutSalt.toString()
        }
      }
    };
    final requestJson = jsonEncode(parameters);
    Map<String, dynamic> queryParameter = {"RequestJson": requestJson};
    final uri = Uri.http("51.38.74.188:8012", "/PayUApi", queryParameter);
    Response result = await http.Client().post(uri);
    if (result.statusCode == 200) {
      var model = jsonDecode(result.body);
      hashResponse = model;
    } else {
      showAlertDialog(context, "Something went wrong", "Try again later");
    }

    log(hashResponse.toString());
    _checkoutPro.hashGenerated(hash: hashResponse);
  }

  @override
  onError(Map? response) {
    showAlertDialog(context, "Payment error", response.toString());
  }

  @override
  onPaymentCancel(Map? response) {
    showAlertDialog(context, "Payment canceled ?", "This payment has canceled");
  }

  @override
  onPaymentFailure(response) {
    log("Payment failed");
    showAlertDialog(context, "Payment failed", response.toString());
  }

  @override
  onPaymentSuccess(response) {
    log("Payment success");
    showAlertDialog(context, "Payment success", response.toString());
  }

  paymentModeExpansion(
      {required String buttonLabel,
      required Color buttonColor,
      required String groupValue,
      required String radioLabel,
      required String value,
      required String description,
      required void Function(String?)? radioOnChanged}) {
    return ExpansionTile(
      // initiallyExpanded: true,
      backgroundColor: const Color.fromARGB(255, 189, 219, 191),
      iconColor: Colors.transparent,
      trailing: kHeight1,
      title: Neumorphic(
        margin: const EdgeInsets.only(left: 40),
        padding: const EdgeInsets.all(12),
        style: NeumorphicStyle(
            shadowDarkColor: Colors.black,
            color: buttonColor,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonLabel,
              style: const TextStyle(
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            )
          ],
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            description,
          ),
        ),
        paymentModeRadio(
            groupValue: groupValue,
            value: value,
            label: radioLabel,
            radioColor: buttonColor,
            onChanged: radioOnChanged),
      ],
    );
  }

  paymentModeRadio(
      {required String? groupValue,
      required String value,
      required Color radioColor,
      required void Function(String?)? onChanged,
      required String label}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          activeColor: radioColor,
          onChanged: onChanged,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 17,
            color: Color(0xff363636),
          ),
        ),
      ],
    );
  }
}
