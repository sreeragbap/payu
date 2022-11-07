
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/constants.dart';

import 'package:savings_deposit/presentation/pages/customer/withdrawal/widgets/all_cards.dart';

class GoldLoanCard extends StatelessWidget {
  const GoldLoanCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {
        state.goldLoandetailsFailureorSuccess.fold(() {}, (either) {
          either.fold((failure) {
            failure.map(
                dataNotFount: (_) => "Invalid ID",
                clientFailure: (_) => "Client Failure",
                serverFailure: (_) => "Server Failure",
                dataResponseStatus: (value) {
                  showToast("Invalid gold no",
                      context: context,
                      position: StyledToastPosition.center,
                      duration: kDuration2);

                  context.read<CustomerBloc>().add(
                      CustomerEvent.searchsdReponsesStatus(
                          sdstatus: value.status));
                  return;
                },
                setteledaccount: (_) {
                  //   Flushbar(
                  //     message: "Settled Account",
                  //     duration: const Duration(seconds: 1),
                  //   ).show(context);
                  //   context.read<CustomerBloc>().add(
                  //       CustomerEvent.searchsdReponsesStatus(
                  //           sdstatus: value.status));
                  //   return;
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
            child: Column(
          children: [
            const Text("Gold Loan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            Row(
              children: [
                ContentTextfield(
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(16)
                  ],
                  keyboardType: TextInputType.number,
                  hinttext: "Enter Pledge No",
                  controller: goldloanno,
                  onFieldSubmitted: (value) {
                    // context
                    //     .read<CustomerBloc>()
                    //     .add(CustomerEvent.sdsearchaccountno(goldloanno.text));

                    // if (goldloanno.text.length == 16) {
                    //   context
                    //       .read<CustomerBloc>()
                    //       .add(CustomerEvent.searchgoldLoanno(
                    //         pledgeno: goldloanno.text,
                    //         amount: state.goldloanamount,
                    //       ));
                    // } else {
                    //   context
                    //       .read<CustomerBloc>()
                    //       .add(const CustomerEvent.sdsearchclearDataModel());
                    // }
                  },
                  onChanged: (_) {
                    context
                        .read<CustomerBloc>()
                        .add(CustomerEvent.sdsearchaccountno(goldloanno.text));

                    if (goldloanno.text.length == 16) {
                      context
                          .read<CustomerBloc>()
                          .add(CustomerEvent.searchgoldLoanno(
                            pledgeno: goldloanno.text,
                            amount: state.withdrawalAmount.round().toString(),
                          ));
                    } else {
                      context
                          .read<CustomerBloc>()
                          .add(const CustomerEvent.sdsearchclearDatamodel());
                    }
                  },
                ),
                // ContentTextfield(
                //   inputFormatters: [
                //     FilteringTextInputFormatter.digitsOnly,
                //     LengthLimitingTextInputFormatter(6)
                //   ],
                //   controller: settleamountcontrl,
                //   keyboardType: TextInputType.number,
                //   hinttext: "To check Amount",
                //   onFieldSubmitted: (value) {
                //     context
                //         .read<CustomerBloc>()
                //         .add(CustomerEvent.goldLoanamount(value));
                //     context
                //         .read<CustomerBloc>()
                //         .add(CustomerEvent.searchgoldLoanno(
                //           pledgeno: goldloanno.text,
                //           amount: state.goldloanamount,
                //         ));

                //     settleamountcontrl.text =
                //         state.goldloansearchdatas!.intamt.toString();
                //     // context
                //     //     .read<CustomerBloc>()
                //     //     .add(const CustomerEvent.goldLoanamount(""));
                //   },
                //   onChanged: (_) {},
                // )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.person),
                state.goldloansearchdatas == null ||
                        state.goldloansearchdatas!.errMessage != "Success"
                    ? const SizedBox()
                    : Text(
                        state.goldloansearchdatas!.custname.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
              ],
            ),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Settlement",
                    style: TextStyle(fontWeight: FontWeight.bold)),

                state.goldloansearchdatas == null ||
                        state.goldloansearchdatas!.errMessage != "Success"
                    ? const SizedBox()
                    : Text(
                        state.goldloansearchdatas!.settlementamount.toString())
                // : Text(state.goldloansearchdatas!.branchId == -1
                //     ? ""
                //     : state.goldloansearchdatas!.branchId.toString() +
                //         "-" +
                //         state.goldloansearchdatas!.branchName),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Balance ",
                    style: TextStyle(fontWeight: FontWeight.bold)),

                state.goldloansearchdatas == null ||
                        state.goldloansearchdatas!.errMessage != "Success"
                    ? const SizedBox()
                    : Text(state.goldloansearchdatas!.balance.toString())
                // : Text(state.goldloansearchdatas!.branchId == -1
                //     ? ""
                //     : state.goldloansearchdatas!.branchId.toString() +
                //         "-" +
                //         state.goldloansearchdatas!.branchName),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Total Amount ",
                    style: TextStyle(fontWeight: FontWeight.bold)),

                state.goldloansearchdatas == null ||
                        state.goldloansearchdatas!.errMessage != "Success"
                    ? const SizedBox()
                    : Text(state.goldloansearchdatas!.totamt.toString())
                // : Text(state.goldloansearchdatas!.branchId == -1
                //     ? ""
                //     : state.goldloansearchdatas!.branchId.toString() +
                //         "-" +
                //         state.goldloansearchdatas!.branchName),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     const Text("Total Amount"),

            //     state.goldloansearchdatas == null ||
            //             state.goldloansearchdatas!.errMessage != "Success"
            //         ? const SizedBox()
            //         : Text(state.goldloansearchdatas!..toString())
            //     // : Text(state.goldloansearchdatas!.branchId == -1
            //     //     ? ""
            //     //     : state.goldloansearchdatas!.branchId.toString() +
            //     //         "-" +
            //     //         state.goldloansearchdatas!.branchName),
            //   ],
            // ),
          ],
        ));
      },
    );
  }
}
