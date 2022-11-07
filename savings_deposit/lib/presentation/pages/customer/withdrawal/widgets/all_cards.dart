import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:savings_deposit/application/customer/customer_bloc.dart';

import 'package:savings_deposit/domain/customer/models/customer_models.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/cards/bank.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/cards/goldcard.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/cards/rdcard.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/cards/sdcard.dart';

final searchsdid = TextEditingController();
final goldloanno = TextEditingController();
final searchRdNo = TextEditingController();
final installmentcount = TextEditingController();

// final sdponenumber = TextEditingController();
// CustomerOtherBankDataModel? otherBankDetails;

class AllBankCard extends StatelessWidget {
  CustomerOtherBankDataModel? otherBankDetails;

  AllBankCard({Key? key, this.otherBankDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {},
      builder: (context, state) {
        return BlocBuilder<CustomerBloc, CustomerState>(
          builder: (context, state) {
            return otherBankDetails!.type == 'bank'
                ? Bankcard(otherbankData: otherBankDetails!)
                : otherBankDetails!.type == 'SD'
                    ? SdsearchAccountCard()
                    : otherBankDetails!.type == 'RD'
                        ? const RecurringDepositcard()
                        : otherBankDetails!.type == 'GOLD_LOAN'
                            ? const GoldLoanCard()
                            : const SizedBox();
          },
        );
      },
    );
  }
}

//===============================================================================================

class ContentTextfield extends StatelessWidget {
  final Function(String)? onChanged;
  final String hinttext;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Function()? onTap;
  final TextStyle? textStyle;
  void Function(String)? onFieldSubmitted;

  ContentTextfield(
      {Key? key,
      required this.hinttext,
      required this.onChanged,
      this.validator,
      this.controller,
      this.autovalidateMode,
      this.inputFormatters,
      this.keyboardType,
      this.onTap,
      this.textStyle,
      this.onFieldSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40,
        width: 100,
        child: TextFormField(
          validator: validator,
          onChanged: onChanged,
          onTap: onTap,
          controller: controller,
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          autovalidateMode: autovalidateMode,
          onFieldSubmitted: onFieldSubmitted,
          style: const TextStyle(color: Colors.black, fontSize: 14),
          decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: textStyle,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 59, 59, 59))),
          ),
        ),
      ),
    );
  }
}

//----------------------Clear Textformfield values ------------//

clearCustomerCardData(BuildContext context) {
  searchsdid.clear();
  // sdponenumber.clear();
}
