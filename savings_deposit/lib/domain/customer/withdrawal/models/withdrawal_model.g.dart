// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SdAccountSearchDataModel _$$_SdAccountSearchDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_SdAccountSearchDataModel(
      customerName: json['customerName'] as String,
      mobileNumber: json['mobileNumber'] as String,
    );

Map<String, dynamic> _$$_SdAccountSearchDataModelToJson(
        _$_SdAccountSearchDataModel instance) =>
    <String, dynamic>{
      'customerName': instance.customerName,
      'mobileNumber': instance.mobileNumber,
    };

_$_GoldLoanSearchDataModel _$$_GoldLoanSearchDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_GoldLoanSearchDataModel(
      custid: json['custid'] as String?,
      custname: json['custname'] as String?,
      balance: json['balance'] as int?,
      totamt: json['totamt'] as int?,
      intamt: json['intamt'] as int?,
      seramt: json['seramt'] as int?,
      appamt: json['appamt'] as int?,
      post: json['post'] as int?,
      othercharge: json['othercharge'] as int?,
      advcharg: json['advcharg'] as int?,
      otherexpense: json['otherexpense'] as int?,
      otherexpensEPRINTOUT: json['otherexpensE_PRINTOUT'] as int?,
      interestwaive: json['interestwaive'] as int?,
      settlementamount: json['settlementamount'] as int?,
      intdt: json['intdt'] as String?,
      errMessage: json['errMessage'] as String?,
    );

Map<String, dynamic> _$$_GoldLoanSearchDataModelToJson(
        _$_GoldLoanSearchDataModel instance) =>
    <String, dynamic>{
      'custid': instance.custid,
      'custname': instance.custname,
      'balance': instance.balance,
      'totamt': instance.totamt,
      'intamt': instance.intamt,
      'seramt': instance.seramt,
      'appamt': instance.appamt,
      'post': instance.post,
      'othercharge': instance.othercharge,
      'advcharg': instance.advcharg,
      'otherexpense': instance.otherexpense,
      'otherexpensE_PRINTOUT': instance.otherexpensEPRINTOUT,
      'interestwaive': instance.interestwaive,
      'settlementamount': instance.settlementamount,
      'intdt': instance.intdt,
      'errMessage': instance.errMessage,
    };

_$_RdDataModel _$$_RdDataModelFromJson(Map<String, dynamic> json) =>
    _$_RdDataModel(
      documentIDInfoList: (json['documentIDInfoList'] as List<dynamic>?)
          ?.map((e) => RdData.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: RdStatus.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RdDataModelToJson(_$_RdDataModel instance) =>
    <String, dynamic>{
      'documentIDInfoList': instance.documentIDInfoList,
      'status': instance.status,
    };

_$_RdData _$$_RdDataFromJson(Map<String, dynamic> json) => _$_RdData(
      docId: json['doc_id'] as String?,
      cusId: json['cus_id'] as String?,
      branchId: json['branch_id'] as int?,
      moduleId: json['module_id'] as int?,
      custName: json['cust_name'] as String?,
      depPeriod: json['dep_prd'] as int?,
      depAmount: json['dep_amt'] as int?,
      intrestRate: (json['int_rt'] as num?)?.toDouble(),
      depDate: json['depDate'] as String?,
      dueDate: json['dueDate'] as String?,
      closeDate: json['clsDate'] as String?,
      maturityValue: json['mat_val'] as int?,
      installNo: json['inst_no'] as int?,
      schemeId: json['scheme_id'] as int?,
      currentBalance: json['currbalance'] as int?,
      branchName: json['branch_name'] as String?,
    );

Map<String, dynamic> _$$_RdDataToJson(_$_RdData instance) => <String, dynamic>{
      'doc_id': instance.docId,
      'cus_id': instance.cusId,
      'branch_id': instance.branchId,
      'module_id': instance.moduleId,
      'cust_name': instance.custName,
      'dep_prd': instance.depPeriod,
      'dep_amt': instance.depAmount,
      'int_rt': instance.intrestRate,
      'depDate': instance.depDate,
      'dueDate': instance.dueDate,
      'clsDate': instance.closeDate,
      'mat_val': instance.maturityValue,
      'inst_no': instance.installNo,
      'scheme_id': instance.schemeId,
      'currbalance': instance.currentBalance,
      'branch_name': instance.branchName,
    };

_$_RdStatus _$$_RdStatusFromJson(Map<String, dynamic> json) => _$_RdStatus(
      flag: json['flag'] as int,
      code: json['code'] as int,
      message: json['message'] as String,
      timeStamp: json['timeStamp'] as String,
    );

Map<String, dynamic> _$$_RdStatusToJson(_$_RdStatus instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'code': instance.code,
      'message': instance.message,
      'timeStamp': instance.timeStamp,
    };

_$_RdinstallmentDatamodel _$$_RdinstallmentDatamodelFromJson(
        Map<String, dynamic> json) =>
    _$_RdinstallmentDatamodel(
      status: (json['status'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_RdinstallmentDatamodelToJson(
        _$_RdinstallmentDatamodel instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_$_PostwithdrawalResponseDatamodel _$$_PostwithdrawalResponseDatamodelFromJson(
        Map<String, dynamic> json) =>
    _$_PostwithdrawalResponseDatamodel(
      status: json['status'] as String,
      type: json['type'] as String,
      transId: json['transId'] as int,
    );

Map<String, dynamic> _$$_PostwithdrawalResponseDatamodelToJson(
        _$_PostwithdrawalResponseDatamodel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'type': instance.type,
      'transId': instance.transId,
    };
