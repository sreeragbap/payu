import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';

import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/constants.dart';

import 'package:savings_deposit/presentation/pages/customer/withdrawal/widgets/all_cards.dart';

class SdsearchAccountCard extends StatelessWidget {
  SdsearchAccountCard({Key? key}) : super(key: key);
  dynamic valueChoosen;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {
        state.sdaccountdetailsFailureorSuccess.fold(() {}, (either) {
          either.fold((failure) {
            failure.map(
                dataNotFount: (_) => "Invalid ID",
                clientFailure: (_) => "Client Failure",
                serverFailure: (_) => "Server Failure",
                dataResponseStatus: (value) {
                  showToast("Invalid ID",
                      context: context,
                      position: StyledToastPosition.center,
                      duration: kDuration2);
                  // Flushbar(
                  //   flushbarPosition: FlushbarPosition.TOP,
                  //   backgroundColor: kbackgroundColor,
                  //   message: "Invalid ID",
                  //   duration: const Duration(seconds: 5),
                  // ).show(context);
                  context.read<CustomerBloc>().add(
                      CustomerEvent.searchsdReponsesStatus(
                          sdstatus: value.status));
                },
                setteledaccount: (value) {
                  showToast("Account Setteled",
                      context: context,
                      position: StyledToastPosition.center,
                      duration: kDuration2);
                  // Flushbar(
                  //   message: "Settled Account",
                  //   duration: const Duration(seconds: 1),
                  // ).show(context);
                  context.read<CustomerBloc>().add(
                      CustomerEvent.searchsdReponsesStatus(
                          sdstatus: value.status));
                  return;
                },
                withdrawalStatus: (_) {});
          }, (success) {
            context.read<CustomerBloc>().add(
                const CustomerEvent.searchsdReponsesStatus(sdstatus: "Found"));
          });
        });
      },
      builder: (context, state) {
        final usertype = context.read<LoginBloc>().state.loginDetails!.userType;

        return Form(
            child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("SD Search",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContentTextfield(
                    controller: searchsdid,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16)
                    ],
                    hinttext: "Enter SD Number",
                    textStyle: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      context
                          .read<CustomerBloc>()
                          .add(CustomerEvent.sdsearchaccountno(value));
                      if (searchsdid.text.length == 16) {
                        context
                            .read<CustomerBloc>()
                            .add(CustomerEvent.searchsdaccountbutton(
                              depositid: searchsdid.text,
                              userType: usertype!,
                            ));
                      } else {
                        context
                            .read<CustomerBloc>()
                            .add(const CustomerEvent.sdsearchclearDatamodel());
                      }

                      // print(state.sdsearchNo);
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                  kWidth10,
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.person),
                  state.sdstatus == "SD number not found" ||
                          state.sdaccountsearchdatas == null
                      ? const SizedBox()
                      : Text(state.sdaccountsearchdatas!.customerName),
                ],
              ),
              kHeight10,
              Row(
                children: [
                  const Icon(Icons.mobile_friendly),
                  state.sdstatus == "SD number not found" ||
                          state.sdaccountsearchdatas == null
                      // state.sdaccountsearchdatas == null || searchsdid.text.isEmpty
                      ? const SizedBox()
                      : Text(state.sdaccountsearchdatas!.mobileNumber)
                ],
              )
            ],
          ),
        ));
      },
    );
  }
}
