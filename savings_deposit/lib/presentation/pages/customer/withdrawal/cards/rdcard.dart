import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/constants.dart';

import 'package:savings_deposit/presentation/pages/customer/withdrawal/widgets/all_cards.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/withdrawal.dart';

class RecurringDepositcard extends StatelessWidget {
  const RecurringDepositcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {
        state.rddetailsFailureorSuccess.fold(() {}, (either) {
          either.fold((failure) {
            failure.map(
              dataNotFount: (_) => "Invalid ID",
              clientFailure: (_) => "Client Failure",
              serverFailure: (_) => "Server Failure",
              dataResponseStatus: (value) {
                Flushbar(
                  message: "Invalid ID",
                  duration: const Duration(seconds: 1),
                ).show(context);
                context.read<CustomerBloc>().add(
                    CustomerEvent.searchsdReponsesStatus(
                        sdstatus: value.status));
                return;
              },
              setteledaccount: (_) {}, withdrawalStatus: (_) {},
              // setteledaccount: (value) {
              //   Flushbar(
              //     message: "Settled Account",
              //     duration: const Duration(seconds: 1),
              //   ).show(context);
              //   context.read<CustomerBloc>().add(
              //       CustomerEvent.searchsdReponsesStatus(
              //           sdstatus: value.status));
              //   return;
              // }
            );
          }, (success) {
            context.read<CustomerBloc>().add(
                const CustomerEvent.searchsdReponsesStatus(sdstatus: "Found"));
          });
        });
      },
      builder: (context, state) {
        // final rdmodel =state.rdsearchDatas==null?[]:state.rdsearchDatas!.documentIDInfoList;

        var rdmodel = state.rdsearchDatas;
        int? depAmount;
        int? installmentNo;
        double? installmentAmount;
        double? intrate;
        double? odInt;
        String? dueDate;

        if (rdmodel != null) {
          depAmount = rdmodel.documentIDInfoList != null
              ? rdmodel.documentIDInfoList![0].depAmount!
              : 0;
          installmentNo = rdmodel.documentIDInfoList != null
              ? rdmodel.documentIDInfoList![0].installNo!
              : 0;
          installmentAmount = depAmount / installmentNo;

          intrate = rdmodel.documentIDInfoList != null
              ? rdmodel.documentIDInfoList![0].intrestRate
              : 0;

          final String currentDate =
              DateFormat("dd-MMM-yyyy").format(DateTime.now());

          dueDate = rdmodel.documentIDInfoList != null
              ? rdmodel.documentIDInfoList![0].dueDate.toString()
              : '';

          // String cdate = DateFormat("yyyy-MMM-dd").format( DateTime.parse(dueDate));

          //            odInt = (installmentAmount * (intrate! + 3) / 1200);

          int res = currentDate.compareTo(dueDate);

          print(res);

          if (res == 1) {
            odInt = (installmentAmount * (intrate! + 3) / 1200);
          } else {
            odInt = 0;
          }
        }

        //  final depAmount= state.rdsearchDatas!.documentIDInfoList![0].depAmount!;
        //  final installmentNo=state.rdsearchDatas!.documentIDInfoList![0].installNo!;

        final usertype = context.read<LoginBloc>().state.loginDetails!.userType;
        return Form(
            child: Column(
          children: [
            const Text("RD/VRD",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ContentTextfield(
                      hinttext: "Enter RD Number",
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(16)
                      ],
                      controller: searchRdNo,
                      onChanged: (value) {
                        context.read<CustomerBloc>().add(
                            CustomerEvent.sdsearchaccountno(searchRdNo.text));
                        if (searchRdNo.text.length == 16) {
                          context.read<CustomerBloc>().add(
                              CustomerEvent.searchRdNo(
                                  depositid: searchRdNo.text,
                                  userType: usertype!));
                        } else {
                          context.read<CustomerBloc>().add(
                              const CustomerEvent.sdsearchclearDatamodel());
                        }
                      }),
                  kWidth10,
                  BlocConsumer<CustomerBloc, CustomerState>(
                    listener: (context, state) {
                      state.rdinstallmentNoFailureorSuccess.fold(
                          () => null,
                          (a) => a.fold((l) => null, (r) {
                                withdrawAmountController.text =
                                    state.rdinstalmentdatas!.status.toString();

                                context.read<CustomerBloc>().add(
                                      CustomerEvent.withdrawalUpdated(state
                                          .rdinstalmentdatas!.status
                                          .toString()),
                                    );

                                // showDialog(
                                //     context: context,
                                //     builder: (BuildContext context) =>
                                //         AlertDialog(
                                //           title: Column(
                                //             crossAxisAlignment:
                                //                 CrossAxisAlignment.start,
                                //             children: [
                                //               Text(
                                //                   "Installment amount is  ₹${state.rdinstalmentdatas!.status.toString()}"),
                                //               const Text(
                                //                   "Do you want to continue the payment ?")
                                //             ],
                                //           ),

                                //           // Text(
                                //           //     "Installment amount is ₹${state.rdinstalmentdatas!.status.toString()}\nDo you want to continue the payment? "),
                                //           actions: [
                                //             ElevatedButton(
                                //                 onPressed: () {
                                //                   const maximiumbalance = 100;
                                //                   // Navigator.pop(context);
                                //                   if (withdrawDateController
                                //                       .text.isEmpty) {
                                //                     showDialog(
                                //                         context: context,
                                //                         builder:
                                //                             (BuildContext
                                //                                     context) =>
                                //                                 AlertDialog(
                                //                                   title: const Text(
                                //                                       "Please select date"),
                                //                                   actions: [
                                //                                     ElevatedButton(
                                //                                         onPressed:
                                //                                             () {
                                //                                           Navigator.of(context)
                                //                                               .pop();
                                //                                         },
                                //                                         child: const Text(
                                //                                             "Ok")),
                                //                                   ],
                                //                                 ));
                                //                   }

                                //                   else {
                                //                     submitdailogbox(
                                //                         context,
                                //                         state.datepicker!,
                                //                         state
                                //                             .withdrawalFilteredList!,
                                //                         state
                                //                             .customerActiveAccounts!);
                                //                   }
                                //                 },
                                //                 child: const Text("Yes")),
                                //             ElevatedButton(
                                //                 onPressed: () {
                                //                   Navigator.of(context).pop();
                                //                 },
                                //                 child: const Text("No")),
                                //           ],
                                //         ));
                                // withdrawAmountController.text =
                                //     state.rdinstalmentdatas!.status.toString();

                                // context.read<CustomerBloc>().add(
                                //     CustomerEvent.withdrawalUpdated(state
                                //         .rdinstalmentdatas!.status
                                //         .toString()));
                              }));
                    },
                    builder: (context, state) {
                      return SizedBox(width: 100,height: 40,
                        child: TextFormField(
                          decoration: const InputDecoration(hintText:  "No of Instalments",hintStyle: TextStyle(fontSize: 12),  focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 59, 59, 59))),),
                           
                            controller: installmentcount,
                            onChanged: (value) {
                              if (value != "") {
                                context.read<CustomerBloc>().add(
                                    CustomerEvent.rdinstallmentNo(
                                        docId: searchRdNo.text,
                                        depprd: state.rdsearchDatas!
                                            .documentIDInfoList![0].depPeriod!,
                                        depamt: state.rdsearchDatas!
                                            .documentIDInfoList![0].depAmount!,
                                        intrt: state.rdsearchDatas!
                                            .documentIDInfoList![0].intrestRate!,
                                        depDate: state.rdsearchDatas!
                                            .documentIDInfoList![0].depDate!,
                                        dueDate: state.rdsearchDatas!
                                            .documentIDInfoList![0].dueDate
                                            .toString(),
                                        clsDate: state.rdsearchDatas!
                                            .documentIDInfoList![0].closeDate
                                            .toString(),
                                        installno: state.rdsearchDatas!
                                            .documentIDInfoList![0].installNo!,
                                        instno: int.parse(value),
                                        currinstall: state
                                                .rdsearchDatas!
                                                .documentIDInfoList![0]
                                                .installNo! +
                                            1));
                              }
                            }),
                      );
                    },
                  )
                  // ContentTextfield(
                  //   onChanged: (value) {},
                  //   hinttext: "instalment ",
                  // )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.person),
                    kWidth5,
                    state.sdstatus == "Inavlid RD" ||
                            state.rdsearchDatas == null
                        ? const SizedBox()
                        : Text(state.rdsearchDatas == null
                            ? ''
                            : rdmodel!.documentIDInfoList != null
                                ? state.rdsearchDatas!.documentIDInfoList![0]
                                    .custName!
                                : ''),
                  ],
                ),
                //Text(rdmodel==null?'':rdmodel[0].custName!),

                Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Due :",
                       
                      ), kWidth5,
                      state.rdinstalmentdatas == null
                          ? const SizedBox()
                          : Text(
                              state.rdinstalmentdatas!.status.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                    ],
                  ),
                ),
              ],
            ),

            state.rdsearchDatas == null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text('Invalid Rd Number')],
                  )
                : const SizedBox(),
            Row(
              children: [
                const Icon(Icons.account_balance),
                kWidth5,
                state.sdstatus == "Inavlid RD" || state.rdsearchDatas == null
                    ? const SizedBox()
                    : Text(state.rdsearchDatas == null
                        ? ''
                        : rdmodel!.documentIDInfoList != null
                            ? state.rdsearchDatas!.documentIDInfoList![0]
                                        .branchId ==
                                    -1
                                ? ""
                                : state.rdsearchDatas!.documentIDInfoList![0]
                                        .branchId
                                        .toString() +
                                    "-" +
                                    state.rdsearchDatas!.documentIDInfoList![0]
                                        .branchName!
                            : '')
              ],
            ),

            state.sdsearchNo.length >= 16 &&
                    state.rdsearchDatas!.status.message == 'No Data Found'
                ? const Text('Invalid Rd Number')
                : const SizedBox(),

            // state.rdsearchDatas!.status.message=='No Data Found'?Text('Invalid Rd Number'):SizedBox():SizedBox()

            // state.sdsearchNo.length >= 16?
            Row(
              children: [
                state.rdsearchDatas != null &&
                        state.rdsearchDatas!.documentIDInfoList != null
                    ? state.rdsearchDatas!.documentIDInfoList![0].moduleId == 3
                        ? const Text(
                            'Instalment Amount :',
                            
                          )
                        : const Text(
                            'Amount :',
                           
                          )
                    : const SizedBox(),
                kWidth5,
                state.rdsearchDatas != null
                    ? Text(rdmodel!.documentIDInfoList != null
                        ? state.rdsearchDatas!.documentIDInfoList![0]
                                    .moduleId ==
                                3
                            ? installmentAmount.toString()
                            : depAmount.toString()
                        : '')
                    : const SizedBox()
              ],
            ),
            //  :SizedBox(),

            //   state.sdsearchNo.length >= 16?
            Row(
              children: [
                state.rdsearchDatas != null &&
                        state.rdsearchDatas!.documentIDInfoList != null
                    ? const Text('Overdue Interest :',
                        )
                    : const SizedBox(),
                kWidth5,
                Text(state.rdsearchDatas != null &&
                        state.rdsearchDatas!.documentIDInfoList != null
                    ? odInt!.isNaN
                        ? ''
                        : odInt.roundToDouble().toString()
                    : ''),
              ],
            ),

            //:SizedBox()
          ],
        ));
      },
    );
  }
}
