import 'package:freezed_annotation/freezed_annotation.dart';
part 'withdrawal_model.freezed.dart';
part 'withdrawal_model.g.dart';

@freezed
class SdAccountSearchDataModel with _$SdAccountSearchDataModel {
  const factory SdAccountSearchDataModel({
    required String customerName,
    required String mobileNumber,
  }) = _SdAccountSearchDataModel;

  factory SdAccountSearchDataModel.fromJson(Map<String, dynamic> json) =>
      _$SdAccountSearchDataModelFromJson(json);
}

@freezed
class GoldLoanSearchDataModel with _$GoldLoanSearchDataModel {
  const factory GoldLoanSearchDataModel(
      {String? custid,
      required String? custname,
      required int? balance,
      required int? totamt,
      int? intamt,
      int? seramt,
      int? appamt,
      int? post,
      int? othercharge,
      int? advcharg,
      int? otherexpense,
      @JsonKey(name: "otherexpensE_PRINTOUT") int? otherexpensEPRINTOUT,
      int? interestwaive,
      required int? settlementamount,
      String? intdt,
      String? errMessage}) = _GoldLoanSearchDataModel;

  factory GoldLoanSearchDataModel.fromJson(Map<String, dynamic> json) =>
      _$GoldLoanSearchDataModelFromJson(json);
}

@freezed
class RdDataModel with _$RdDataModel {
  const factory RdDataModel({
    required List<RdData>? documentIDInfoList,
    required RdStatus status,
  }) = _RdDataModel;

  factory RdDataModel.fromJson(Map<String, dynamic> json) =>
      _$RdDataModelFromJson(json);
}

@freezed
class RdData with _$RdData {
  const factory RdData({
    @JsonKey(name: "doc_id") required String? docId,
    @JsonKey(name: "cus_id") String? cusId,
    @JsonKey(name: "branch_id") required int? branchId,
    @JsonKey(name: "module_id") required int? moduleId,
    @JsonKey(name: "cust_name") required String? custName,
    @JsonKey(name: "dep_prd") required int? depPeriod,
    @JsonKey(name: "dep_amt") required int? depAmount,
    @JsonKey(name: "int_rt") required double? intrestRate,
    @JsonKey(name: "depDate") required String? depDate,
    @JsonKey(name: "dueDate") required String? dueDate,
    @JsonKey(name: "clsDate") required String? closeDate,
    @JsonKey(name: "mat_val") required int? maturityValue,
    @JsonKey(name: "inst_no") required int? installNo,
    @JsonKey(name: "scheme_id") required int? schemeId,
    @JsonKey(name: "currbalance") required int? currentBalance,
    @JsonKey(name: "branch_name") required String? branchName,
  }) = _RdData;

  factory RdData.fromJson(Map<String, dynamic> json) => _$RdDataFromJson(json);
}

@freezed
class RdStatus with _$RdStatus {
  const factory RdStatus(
      {required int flag,
      required int code,
      required String message,
      required String timeStamp}) = _RdStatus;

  factory RdStatus.fromJson(Map<String, dynamic> json) =>
      _$RdStatusFromJson(json);
}

@freezed
class RdinstallmentDatamodel with _$RdinstallmentDatamodel {
  const factory RdinstallmentDatamodel({required double? status}) =
      _RdinstallmentDatamodel;
  factory RdinstallmentDatamodel.fromJson(Map<String, dynamic> json) =>
      _$RdinstallmentDatamodelFromJson(json);
}

@freezed
class PostwithdrawalResponseDatamodel with _$PostwithdrawalResponseDatamodel {
  const factory PostwithdrawalResponseDatamodel({
    required String status,
    required String type,
    required int transId,
  }) = _PostwithdrawalResponseDatamodel;

  factory PostwithdrawalResponseDatamodel.fromJson(Map<String, dynamic> json) =>
      _$PostwithdrawalResponseDatamodelFromJson(json);
}
