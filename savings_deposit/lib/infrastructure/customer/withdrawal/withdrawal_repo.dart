// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/customer/failure/customer_failure.dart';

import 'package:http/http.dart' as http;
import 'package:savings_deposit/domain/customer/withdrawal/i_withdrawal_repo.dart';
import 'package:savings_deposit/domain/customer/withdrawal/models/withdrawal_model.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

@Injectable(as: IwithdrawalRepo)
@prod
class WithdrawalRepo implements IwithdrawalRepo {
  @override
  Future<Either<CustomerFailure, PostwithdrawalResponseDatamodel>>
      postwithdrawalTranscationDetails({
    required String? depositid,
    required int? branchid,
    required int? firmid,
    required double? amount,
    required String? transactionMethod,
    required String? loginToken,

    // required String? traDate,
    // int? chqno,
    // String? customerBank,
    // String? branchName,
    String? bankaccountNo,
    String? empcode,
    // String? customerName,
    // int? userid,
    String? usertype,
    String? ifsccode,
    // DateTime? realizationDate,
    String? recurringtype,
    int? noOfTimes,
    int? moduleId,
    DateTime? startDate,
    DateTime? closeDate,
    String? customerId,
    //---------RD---------
    required String? sdno,
    required String? phoneNo,
    required String? tfrsdno,
    required double? tframt,
    required int? odint,
    required int? currinstno,

    //-----------gold loan---
    String? plgno,
    DateTime? realizationDate,
    required String? tfrdta,
    required String? statusAppWeb,
  }) async {
    try {
      Map<String, dynamic> parametervalue = {
        "Type": "WithdrawalRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Withdrawal": {
          "WithdrawalDetails": {
            "FirmId": firmid,
            "BranchId": branchid,
            "ModuleId": moduleId,
            "DepositId": depositid,
            "StartDate": startDate.toString().split(" ").first,
            "EndDate": closeDate.toString().split(" ").first,
            "NoOfOccurence": noOfTimes,
            "Frequency": recurringtype,
            "Amount": amount,
            "Ifsc": ifsccode,
            "TransactionMethod": transactionMethod,
            "AccountNumber": bankaccountNo,
            "UserType": usertype == "Employee" ? 0 : 1,
            "UserId": empcode,
            //-----------goldloan--------
            "Plgno": plgno,
            //-----RD----------
            "sdno": sdno,
            "phoneNo": phoneNo,
            "tfrsdno": tfrsdno,
            "tframt": tframt.toString(),
            "odint": odint.toString(),
            "currinstno": currinstno.toString(),

            "RealizationDate": realizationDate.toString().split(" ").first,
            "tfr_data": tfrdta,
            "statusAppWeb": statusAppWeb,
          }
        }
      };
      print(parametervalue);
      final requestedjson = jsonEncode(parametervalue);
      print(requestedjson);

      Map<String, dynamic> queryParameter = {"RequestJson": requestedjson};

      final uri = Uri.http(authority2, "/Withdrawal", queryParameter);

      final result = await http.post(uri);

      print(result.body);
      if (result.statusCode == 200 || result.statusCode == 201) {
        print(result.statusCode);
        var model = jsonDecode(result.body);
        PostwithdrawalResponseDatamodel postwithdrawaldatamodel =
            PostwithdrawalResponseDatamodel.fromJson(model);
        return Right(postwithdrawaldatamodel);
      } else {
        return const Left(
          CustomerFailure.serverFailure(),
        );
      }
    } catch (e) {
      return const Left(
        CustomerFailure.clientFailure(),
      );
    }
  }

  @override
  Future<Either<CustomerFailure, GoldLoanSearchDataModel>> goldLoanGetDetails(
      {required String loginToken,
      required String? pledgeno,
      required String? amount}) async {
    try {
      Map<String, dynamic> parameter = {
        "Type": "RecurringRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {"plgno": pledgeno, "inamt": amount}
        }
      };
      final requestedJson = jsonEncode(parameter);
      print(requestedJson);
      Map<String, dynamic> queryParameter = {"Requestjson": requestedJson};
      final uri = Uri.http(authority2, "/WithdrawaltoGl", queryParameter);
      final result = await http.Client().get(uri);

      print(result.body);
      if (result.statusCode == 200 || result.statusCode == 201) {
        print(result.statusCode);
        var model = jsonDecode(result.body);
        // print(model);
        GoldLoanSearchDataModel goldLoanSearchModel =
            GoldLoanSearchDataModel.fromJson(model);

        final decode = jsonDecode(result.body);
        if (decode["errMessage"] == "Success") {
          return Right(goldLoanSearchModel);
        } else {
          return Left(CustomerFailure.dataResponseStatus(decode["errMessage"]));
        }
      } else {
        return const Left(
          CustomerFailure.serverFailure(),
        );
      }
    } catch (e) {
      return left(const CustomerFailure.clientFailure());
    }
  }

//***************SEARCH WITH  RD  NO**********************************
  @override
  Future<Either<CustomerFailure, RdDataModel>> getRdDetails(
      {required String loginToken,
      required String? depositid,
      required String? usertype}) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "RecurringRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {
            "docid": depositid,
          }
        }
      };
      final requestedJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      final uri = Uri.http(authority2, "/WithdrawalToRD", queryParameter);
      final result = await http.Client().get(uri);
      print(result.body);
      if (result.statusCode == 200 || result.statusCode == 201) {
        print(result.statusCode);
        var model = jsonDecode(result.body);
        // print(model);
        RdDataModel rdSearchModel = RdDataModel.fromJson(model);

        if (model["status"]["message"] == "Success") {
          return Right(rdSearchModel);
        } else {
          // var results = model["status"]["message"];

          // print("----------------" + results);
          // print(model["status"]["message"]);
          return Right(rdSearchModel);
        }
      } else {
        final decode = jsonDecode(result.body);
        if (decode["status"] == "Inavlid RD") {
          return Left(CustomerFailure.dataResponseStatus(decode["status"]));
        } else {
          return const Left(
            CustomerFailure.serverFailure(),
          );
        }
      }
    } catch (e) {
      return left(const CustomerFailure.clientFailure());
    }
  }

  @override
  Future<Either<CustomerFailure, RdinstallmentDatamodel>>
      getRdinstalmentdetails(
          {required String loginToken,
          required String? docId,
          required int depprd,
          required int depamt,
          required double intrt,
          required String depDate,
          required String dueDate,
          required String clsDate,
          required int installno,
          required int instno,
          required int currinstall}) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "InstallmentRequest",
        "Ver": 1.0,
        "JwtToken": loginToken,
        "Data": {
          "Data": {
            "docid": docId,
            "Depprd": depprd,
            "Depamt": depamt,
            "IntRate": intrt,
            "DepDate": depDate,
            "DueDate": dueDate,
            "ClsDate": clsDate,
            "Instno": instno,
            "installno": installno,
            "Currinstall": currinstall
          }
        }
      };
      final requestedJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      final uri = Uri.http(authority, "/InsatallmentRd", queryParameter);
      final result = await http.Client().get(uri);
      print(result.body);
      if (result.statusCode == 200 || result.statusCode == 201) {
        print(result.statusCode);
        var model = jsonDecode(result.body);
        // print(model);
        RdinstallmentDatamodel rdinstalmentnodata =
            RdinstallmentDatamodel.fromJson(model);
        return Right(rdinstalmentnodata);
        // if (model["status"]["message"] == "Success") {
        //   return Right(rdinstalmentnodata);
        // } else {
        //   // var results = model["status"]["message"];

        //   // print("----------------" + results);
        //   // print(model["status"]["message"]);
        //   return Right(rdinstalmentnodata);
        // }
      } else {
        // final decode = jsonDecode(result.body);
        // if (decode["status"] == "Inavlid RD") {
        //   return Left(CustomerFailure.dataResponseStatus(decode["status"]));
        // } else {
        return const Left(
          CustomerFailure.serverFailure(),
        );
        // }
      }
    } catch (e) {
      return left(const CustomerFailure.clientFailure());
    }
  }
}
