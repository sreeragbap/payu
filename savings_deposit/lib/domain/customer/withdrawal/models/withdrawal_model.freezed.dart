// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'withdrawal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SdAccountSearchDataModel _$SdAccountSearchDataModelFromJson(
    Map<String, dynamic> json) {
  return _SdAccountSearchDataModel.fromJson(json);
}

/// @nodoc
class _$SdAccountSearchDataModelTearOff {
  const _$SdAccountSearchDataModelTearOff();

  _SdAccountSearchDataModel call(
      {required String customerName, required String mobileNumber}) {
    return _SdAccountSearchDataModel(
      customerName: customerName,
      mobileNumber: mobileNumber,
    );
  }

  SdAccountSearchDataModel fromJson(Map<String, Object?> json) {
    return SdAccountSearchDataModel.fromJson(json);
  }
}

/// @nodoc
const $SdAccountSearchDataModel = _$SdAccountSearchDataModelTearOff();

/// @nodoc
mixin _$SdAccountSearchDataModel {
  String get customerName => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SdAccountSearchDataModelCopyWith<SdAccountSearchDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SdAccountSearchDataModelCopyWith<$Res> {
  factory $SdAccountSearchDataModelCopyWith(SdAccountSearchDataModel value,
          $Res Function(SdAccountSearchDataModel) then) =
      _$SdAccountSearchDataModelCopyWithImpl<$Res>;
  $Res call({String customerName, String mobileNumber});
}

/// @nodoc
class _$SdAccountSearchDataModelCopyWithImpl<$Res>
    implements $SdAccountSearchDataModelCopyWith<$Res> {
  _$SdAccountSearchDataModelCopyWithImpl(this._value, this._then);

  final SdAccountSearchDataModel _value;
  // ignore: unused_field
  final $Res Function(SdAccountSearchDataModel) _then;

  @override
  $Res call({
    Object? customerName = freezed,
    Object? mobileNumber = freezed,
  }) {
    return _then(_value.copyWith(
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SdAccountSearchDataModelCopyWith<$Res>
    implements $SdAccountSearchDataModelCopyWith<$Res> {
  factory _$SdAccountSearchDataModelCopyWith(_SdAccountSearchDataModel value,
          $Res Function(_SdAccountSearchDataModel) then) =
      __$SdAccountSearchDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String customerName, String mobileNumber});
}

/// @nodoc
class __$SdAccountSearchDataModelCopyWithImpl<$Res>
    extends _$SdAccountSearchDataModelCopyWithImpl<$Res>
    implements _$SdAccountSearchDataModelCopyWith<$Res> {
  __$SdAccountSearchDataModelCopyWithImpl(_SdAccountSearchDataModel _value,
      $Res Function(_SdAccountSearchDataModel) _then)
      : super(_value, (v) => _then(v as _SdAccountSearchDataModel));

  @override
  _SdAccountSearchDataModel get _value =>
      super._value as _SdAccountSearchDataModel;

  @override
  $Res call({
    Object? customerName = freezed,
    Object? mobileNumber = freezed,
  }) {
    return _then(_SdAccountSearchDataModel(
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SdAccountSearchDataModel implements _SdAccountSearchDataModel {
  const _$_SdAccountSearchDataModel(
      {required this.customerName, required this.mobileNumber});

  factory _$_SdAccountSearchDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_SdAccountSearchDataModelFromJson(json);

  @override
  final String customerName;
  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'SdAccountSearchDataModel(customerName: $customerName, mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SdAccountSearchDataModel &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(mobileNumber));

  @JsonKey(ignore: true)
  @override
  _$SdAccountSearchDataModelCopyWith<_SdAccountSearchDataModel> get copyWith =>
      __$SdAccountSearchDataModelCopyWithImpl<_SdAccountSearchDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SdAccountSearchDataModelToJson(this);
  }
}

abstract class _SdAccountSearchDataModel implements SdAccountSearchDataModel {
  const factory _SdAccountSearchDataModel(
      {required String customerName,
      required String mobileNumber}) = _$_SdAccountSearchDataModel;

  factory _SdAccountSearchDataModel.fromJson(Map<String, dynamic> json) =
      _$_SdAccountSearchDataModel.fromJson;

  @override
  String get customerName;
  @override
  String get mobileNumber;
  @override
  @JsonKey(ignore: true)
  _$SdAccountSearchDataModelCopyWith<_SdAccountSearchDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GoldLoanSearchDataModel _$GoldLoanSearchDataModelFromJson(
    Map<String, dynamic> json) {
  return _GoldLoanSearchDataModel.fromJson(json);
}

/// @nodoc
class _$GoldLoanSearchDataModelTearOff {
  const _$GoldLoanSearchDataModelTearOff();

  _GoldLoanSearchDataModel call(
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
      String? errMessage}) {
    return _GoldLoanSearchDataModel(
      custid: custid,
      custname: custname,
      balance: balance,
      totamt: totamt,
      intamt: intamt,
      seramt: seramt,
      appamt: appamt,
      post: post,
      othercharge: othercharge,
      advcharg: advcharg,
      otherexpense: otherexpense,
      otherexpensEPRINTOUT: otherexpensEPRINTOUT,
      interestwaive: interestwaive,
      settlementamount: settlementamount,
      intdt: intdt,
      errMessage: errMessage,
    );
  }

  GoldLoanSearchDataModel fromJson(Map<String, Object?> json) {
    return GoldLoanSearchDataModel.fromJson(json);
  }
}

/// @nodoc
const $GoldLoanSearchDataModel = _$GoldLoanSearchDataModelTearOff();

/// @nodoc
mixin _$GoldLoanSearchDataModel {
  String? get custid => throw _privateConstructorUsedError;
  String? get custname => throw _privateConstructorUsedError;
  int? get balance => throw _privateConstructorUsedError;
  int? get totamt => throw _privateConstructorUsedError;
  int? get intamt => throw _privateConstructorUsedError;
  int? get seramt => throw _privateConstructorUsedError;
  int? get appamt => throw _privateConstructorUsedError;
  int? get post => throw _privateConstructorUsedError;
  int? get othercharge => throw _privateConstructorUsedError;
  int? get advcharg => throw _privateConstructorUsedError;
  int? get otherexpense => throw _privateConstructorUsedError;
  @JsonKey(name: "otherexpensE_PRINTOUT")
  int? get otherexpensEPRINTOUT => throw _privateConstructorUsedError;
  int? get interestwaive => throw _privateConstructorUsedError;
  int? get settlementamount => throw _privateConstructorUsedError;
  String? get intdt => throw _privateConstructorUsedError;
  String? get errMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoldLoanSearchDataModelCopyWith<GoldLoanSearchDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoldLoanSearchDataModelCopyWith<$Res> {
  factory $GoldLoanSearchDataModelCopyWith(GoldLoanSearchDataModel value,
          $Res Function(GoldLoanSearchDataModel) then) =
      _$GoldLoanSearchDataModelCopyWithImpl<$Res>;
  $Res call(
      {String? custid,
      String? custname,
      int? balance,
      int? totamt,
      int? intamt,
      int? seramt,
      int? appamt,
      int? post,
      int? othercharge,
      int? advcharg,
      int? otherexpense,
      @JsonKey(name: "otherexpensE_PRINTOUT") int? otherexpensEPRINTOUT,
      int? interestwaive,
      int? settlementamount,
      String? intdt,
      String? errMessage});
}

/// @nodoc
class _$GoldLoanSearchDataModelCopyWithImpl<$Res>
    implements $GoldLoanSearchDataModelCopyWith<$Res> {
  _$GoldLoanSearchDataModelCopyWithImpl(this._value, this._then);

  final GoldLoanSearchDataModel _value;
  // ignore: unused_field
  final $Res Function(GoldLoanSearchDataModel) _then;

  @override
  $Res call({
    Object? custid = freezed,
    Object? custname = freezed,
    Object? balance = freezed,
    Object? totamt = freezed,
    Object? intamt = freezed,
    Object? seramt = freezed,
    Object? appamt = freezed,
    Object? post = freezed,
    Object? othercharge = freezed,
    Object? advcharg = freezed,
    Object? otherexpense = freezed,
    Object? otherexpensEPRINTOUT = freezed,
    Object? interestwaive = freezed,
    Object? settlementamount = freezed,
    Object? intdt = freezed,
    Object? errMessage = freezed,
  }) {
    return _then(_value.copyWith(
      custid: custid == freezed
          ? _value.custid
          : custid // ignore: cast_nullable_to_non_nullable
              as String?,
      custname: custname == freezed
          ? _value.custname
          : custname // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      totamt: totamt == freezed
          ? _value.totamt
          : totamt // ignore: cast_nullable_to_non_nullable
              as int?,
      intamt: intamt == freezed
          ? _value.intamt
          : intamt // ignore: cast_nullable_to_non_nullable
              as int?,
      seramt: seramt == freezed
          ? _value.seramt
          : seramt // ignore: cast_nullable_to_non_nullable
              as int?,
      appamt: appamt == freezed
          ? _value.appamt
          : appamt // ignore: cast_nullable_to_non_nullable
              as int?,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as int?,
      othercharge: othercharge == freezed
          ? _value.othercharge
          : othercharge // ignore: cast_nullable_to_non_nullable
              as int?,
      advcharg: advcharg == freezed
          ? _value.advcharg
          : advcharg // ignore: cast_nullable_to_non_nullable
              as int?,
      otherexpense: otherexpense == freezed
          ? _value.otherexpense
          : otherexpense // ignore: cast_nullable_to_non_nullable
              as int?,
      otherexpensEPRINTOUT: otherexpensEPRINTOUT == freezed
          ? _value.otherexpensEPRINTOUT
          : otherexpensEPRINTOUT // ignore: cast_nullable_to_non_nullable
              as int?,
      interestwaive: interestwaive == freezed
          ? _value.interestwaive
          : interestwaive // ignore: cast_nullable_to_non_nullable
              as int?,
      settlementamount: settlementamount == freezed
          ? _value.settlementamount
          : settlementamount // ignore: cast_nullable_to_non_nullable
              as int?,
      intdt: intdt == freezed
          ? _value.intdt
          : intdt // ignore: cast_nullable_to_non_nullable
              as String?,
      errMessage: errMessage == freezed
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GoldLoanSearchDataModelCopyWith<$Res>
    implements $GoldLoanSearchDataModelCopyWith<$Res> {
  factory _$GoldLoanSearchDataModelCopyWith(_GoldLoanSearchDataModel value,
          $Res Function(_GoldLoanSearchDataModel) then) =
      __$GoldLoanSearchDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? custid,
      String? custname,
      int? balance,
      int? totamt,
      int? intamt,
      int? seramt,
      int? appamt,
      int? post,
      int? othercharge,
      int? advcharg,
      int? otherexpense,
      @JsonKey(name: "otherexpensE_PRINTOUT") int? otherexpensEPRINTOUT,
      int? interestwaive,
      int? settlementamount,
      String? intdt,
      String? errMessage});
}

/// @nodoc
class __$GoldLoanSearchDataModelCopyWithImpl<$Res>
    extends _$GoldLoanSearchDataModelCopyWithImpl<$Res>
    implements _$GoldLoanSearchDataModelCopyWith<$Res> {
  __$GoldLoanSearchDataModelCopyWithImpl(_GoldLoanSearchDataModel _value,
      $Res Function(_GoldLoanSearchDataModel) _then)
      : super(_value, (v) => _then(v as _GoldLoanSearchDataModel));

  @override
  _GoldLoanSearchDataModel get _value =>
      super._value as _GoldLoanSearchDataModel;

  @override
  $Res call({
    Object? custid = freezed,
    Object? custname = freezed,
    Object? balance = freezed,
    Object? totamt = freezed,
    Object? intamt = freezed,
    Object? seramt = freezed,
    Object? appamt = freezed,
    Object? post = freezed,
    Object? othercharge = freezed,
    Object? advcharg = freezed,
    Object? otherexpense = freezed,
    Object? otherexpensEPRINTOUT = freezed,
    Object? interestwaive = freezed,
    Object? settlementamount = freezed,
    Object? intdt = freezed,
    Object? errMessage = freezed,
  }) {
    return _then(_GoldLoanSearchDataModel(
      custid: custid == freezed
          ? _value.custid
          : custid // ignore: cast_nullable_to_non_nullable
              as String?,
      custname: custname == freezed
          ? _value.custname
          : custname // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      totamt: totamt == freezed
          ? _value.totamt
          : totamt // ignore: cast_nullable_to_non_nullable
              as int?,
      intamt: intamt == freezed
          ? _value.intamt
          : intamt // ignore: cast_nullable_to_non_nullable
              as int?,
      seramt: seramt == freezed
          ? _value.seramt
          : seramt // ignore: cast_nullable_to_non_nullable
              as int?,
      appamt: appamt == freezed
          ? _value.appamt
          : appamt // ignore: cast_nullable_to_non_nullable
              as int?,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as int?,
      othercharge: othercharge == freezed
          ? _value.othercharge
          : othercharge // ignore: cast_nullable_to_non_nullable
              as int?,
      advcharg: advcharg == freezed
          ? _value.advcharg
          : advcharg // ignore: cast_nullable_to_non_nullable
              as int?,
      otherexpense: otherexpense == freezed
          ? _value.otherexpense
          : otherexpense // ignore: cast_nullable_to_non_nullable
              as int?,
      otherexpensEPRINTOUT: otherexpensEPRINTOUT == freezed
          ? _value.otherexpensEPRINTOUT
          : otherexpensEPRINTOUT // ignore: cast_nullable_to_non_nullable
              as int?,
      interestwaive: interestwaive == freezed
          ? _value.interestwaive
          : interestwaive // ignore: cast_nullable_to_non_nullable
              as int?,
      settlementamount: settlementamount == freezed
          ? _value.settlementamount
          : settlementamount // ignore: cast_nullable_to_non_nullable
              as int?,
      intdt: intdt == freezed
          ? _value.intdt
          : intdt // ignore: cast_nullable_to_non_nullable
              as String?,
      errMessage: errMessage == freezed
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GoldLoanSearchDataModel implements _GoldLoanSearchDataModel {
  const _$_GoldLoanSearchDataModel(
      {this.custid,
      required this.custname,
      required this.balance,
      required this.totamt,
      this.intamt,
      this.seramt,
      this.appamt,
      this.post,
      this.othercharge,
      this.advcharg,
      this.otherexpense,
      @JsonKey(name: "otherexpensE_PRINTOUT") this.otherexpensEPRINTOUT,
      this.interestwaive,
      required this.settlementamount,
      this.intdt,
      this.errMessage});

  factory _$_GoldLoanSearchDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_GoldLoanSearchDataModelFromJson(json);

  @override
  final String? custid;
  @override
  final String? custname;
  @override
  final int? balance;
  @override
  final int? totamt;
  @override
  final int? intamt;
  @override
  final int? seramt;
  @override
  final int? appamt;
  @override
  final int? post;
  @override
  final int? othercharge;
  @override
  final int? advcharg;
  @override
  final int? otherexpense;
  @override
  @JsonKey(name: "otherexpensE_PRINTOUT")
  final int? otherexpensEPRINTOUT;
  @override
  final int? interestwaive;
  @override
  final int? settlementamount;
  @override
  final String? intdt;
  @override
  final String? errMessage;

  @override
  String toString() {
    return 'GoldLoanSearchDataModel(custid: $custid, custname: $custname, balance: $balance, totamt: $totamt, intamt: $intamt, seramt: $seramt, appamt: $appamt, post: $post, othercharge: $othercharge, advcharg: $advcharg, otherexpense: $otherexpense, otherexpensEPRINTOUT: $otherexpensEPRINTOUT, interestwaive: $interestwaive, settlementamount: $settlementamount, intdt: $intdt, errMessage: $errMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoldLoanSearchDataModel &&
            const DeepCollectionEquality().equals(other.custid, custid) &&
            const DeepCollectionEquality().equals(other.custname, custname) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.totamt, totamt) &&
            const DeepCollectionEquality().equals(other.intamt, intamt) &&
            const DeepCollectionEquality().equals(other.seramt, seramt) &&
            const DeepCollectionEquality().equals(other.appamt, appamt) &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality()
                .equals(other.othercharge, othercharge) &&
            const DeepCollectionEquality().equals(other.advcharg, advcharg) &&
            const DeepCollectionEquality()
                .equals(other.otherexpense, otherexpense) &&
            const DeepCollectionEquality()
                .equals(other.otherexpensEPRINTOUT, otherexpensEPRINTOUT) &&
            const DeepCollectionEquality()
                .equals(other.interestwaive, interestwaive) &&
            const DeepCollectionEquality()
                .equals(other.settlementamount, settlementamount) &&
            const DeepCollectionEquality().equals(other.intdt, intdt) &&
            const DeepCollectionEquality()
                .equals(other.errMessage, errMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(custid),
      const DeepCollectionEquality().hash(custname),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(totamt),
      const DeepCollectionEquality().hash(intamt),
      const DeepCollectionEquality().hash(seramt),
      const DeepCollectionEquality().hash(appamt),
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(othercharge),
      const DeepCollectionEquality().hash(advcharg),
      const DeepCollectionEquality().hash(otherexpense),
      const DeepCollectionEquality().hash(otherexpensEPRINTOUT),
      const DeepCollectionEquality().hash(interestwaive),
      const DeepCollectionEquality().hash(settlementamount),
      const DeepCollectionEquality().hash(intdt),
      const DeepCollectionEquality().hash(errMessage));

  @JsonKey(ignore: true)
  @override
  _$GoldLoanSearchDataModelCopyWith<_GoldLoanSearchDataModel> get copyWith =>
      __$GoldLoanSearchDataModelCopyWithImpl<_GoldLoanSearchDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoldLoanSearchDataModelToJson(this);
  }
}

abstract class _GoldLoanSearchDataModel implements GoldLoanSearchDataModel {
  const factory _GoldLoanSearchDataModel(
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
      String? errMessage}) = _$_GoldLoanSearchDataModel;

  factory _GoldLoanSearchDataModel.fromJson(Map<String, dynamic> json) =
      _$_GoldLoanSearchDataModel.fromJson;

  @override
  String? get custid;
  @override
  String? get custname;
  @override
  int? get balance;
  @override
  int? get totamt;
  @override
  int? get intamt;
  @override
  int? get seramt;
  @override
  int? get appamt;
  @override
  int? get post;
  @override
  int? get othercharge;
  @override
  int? get advcharg;
  @override
  int? get otherexpense;
  @override
  @JsonKey(name: "otherexpensE_PRINTOUT")
  int? get otherexpensEPRINTOUT;
  @override
  int? get interestwaive;
  @override
  int? get settlementamount;
  @override
  String? get intdt;
  @override
  String? get errMessage;
  @override
  @JsonKey(ignore: true)
  _$GoldLoanSearchDataModelCopyWith<_GoldLoanSearchDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RdDataModel _$RdDataModelFromJson(Map<String, dynamic> json) {
  return _RdDataModel.fromJson(json);
}

/// @nodoc
class _$RdDataModelTearOff {
  const _$RdDataModelTearOff();

  _RdDataModel call(
      {required List<RdData>? documentIDInfoList, required RdStatus status}) {
    return _RdDataModel(
      documentIDInfoList: documentIDInfoList,
      status: status,
    );
  }

  RdDataModel fromJson(Map<String, Object?> json) {
    return RdDataModel.fromJson(json);
  }
}

/// @nodoc
const $RdDataModel = _$RdDataModelTearOff();

/// @nodoc
mixin _$RdDataModel {
  List<RdData>? get documentIDInfoList => throw _privateConstructorUsedError;
  RdStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RdDataModelCopyWith<RdDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RdDataModelCopyWith<$Res> {
  factory $RdDataModelCopyWith(
          RdDataModel value, $Res Function(RdDataModel) then) =
      _$RdDataModelCopyWithImpl<$Res>;
  $Res call({List<RdData>? documentIDInfoList, RdStatus status});

  $RdStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$RdDataModelCopyWithImpl<$Res> implements $RdDataModelCopyWith<$Res> {
  _$RdDataModelCopyWithImpl(this._value, this._then);

  final RdDataModel _value;
  // ignore: unused_field
  final $Res Function(RdDataModel) _then;

  @override
  $Res call({
    Object? documentIDInfoList = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      documentIDInfoList: documentIDInfoList == freezed
          ? _value.documentIDInfoList
          : documentIDInfoList // ignore: cast_nullable_to_non_nullable
              as List<RdData>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RdStatus,
    ));
  }

  @override
  $RdStatusCopyWith<$Res> get status {
    return $RdStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$RdDataModelCopyWith<$Res>
    implements $RdDataModelCopyWith<$Res> {
  factory _$RdDataModelCopyWith(
          _RdDataModel value, $Res Function(_RdDataModel) then) =
      __$RdDataModelCopyWithImpl<$Res>;
  @override
  $Res call({List<RdData>? documentIDInfoList, RdStatus status});

  @override
  $RdStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$RdDataModelCopyWithImpl<$Res> extends _$RdDataModelCopyWithImpl<$Res>
    implements _$RdDataModelCopyWith<$Res> {
  __$RdDataModelCopyWithImpl(
      _RdDataModel _value, $Res Function(_RdDataModel) _then)
      : super(_value, (v) => _then(v as _RdDataModel));

  @override
  _RdDataModel get _value => super._value as _RdDataModel;

  @override
  $Res call({
    Object? documentIDInfoList = freezed,
    Object? status = freezed,
  }) {
    return _then(_RdDataModel(
      documentIDInfoList: documentIDInfoList == freezed
          ? _value.documentIDInfoList
          : documentIDInfoList // ignore: cast_nullable_to_non_nullable
              as List<RdData>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RdStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RdDataModel implements _RdDataModel {
  const _$_RdDataModel(
      {required this.documentIDInfoList, required this.status});

  factory _$_RdDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_RdDataModelFromJson(json);

  @override
  final List<RdData>? documentIDInfoList;
  @override
  final RdStatus status;

  @override
  String toString() {
    return 'RdDataModel(documentIDInfoList: $documentIDInfoList, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RdDataModel &&
            const DeepCollectionEquality()
                .equals(other.documentIDInfoList, documentIDInfoList) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(documentIDInfoList),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$RdDataModelCopyWith<_RdDataModel> get copyWith =>
      __$RdDataModelCopyWithImpl<_RdDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RdDataModelToJson(this);
  }
}

abstract class _RdDataModel implements RdDataModel {
  const factory _RdDataModel(
      {required List<RdData>? documentIDInfoList,
      required RdStatus status}) = _$_RdDataModel;

  factory _RdDataModel.fromJson(Map<String, dynamic> json) =
      _$_RdDataModel.fromJson;

  @override
  List<RdData>? get documentIDInfoList;
  @override
  RdStatus get status;
  @override
  @JsonKey(ignore: true)
  _$RdDataModelCopyWith<_RdDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RdData _$RdDataFromJson(Map<String, dynamic> json) {
  return _RdData.fromJson(json);
}

/// @nodoc
class _$RdDataTearOff {
  const _$RdDataTearOff();

  _RdData call(
      {@JsonKey(name: "doc_id") required String? docId,
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
      @JsonKey(name: "branch_name") required String? branchName}) {
    return _RdData(
      docId: docId,
      cusId: cusId,
      branchId: branchId,
      moduleId: moduleId,
      custName: custName,
      depPeriod: depPeriod,
      depAmount: depAmount,
      intrestRate: intrestRate,
      depDate: depDate,
      dueDate: dueDate,
      closeDate: closeDate,
      maturityValue: maturityValue,
      installNo: installNo,
      schemeId: schemeId,
      currentBalance: currentBalance,
      branchName: branchName,
    );
  }

  RdData fromJson(Map<String, Object?> json) {
    return RdData.fromJson(json);
  }
}

/// @nodoc
const $RdData = _$RdDataTearOff();

/// @nodoc
mixin _$RdData {
  @JsonKey(name: "doc_id")
  String? get docId => throw _privateConstructorUsedError;
  @JsonKey(name: "cus_id")
  String? get cusId => throw _privateConstructorUsedError;
  @JsonKey(name: "branch_id")
  int? get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: "module_id")
  int? get moduleId => throw _privateConstructorUsedError;
  @JsonKey(name: "cust_name")
  String? get custName => throw _privateConstructorUsedError;
  @JsonKey(name: "dep_prd")
  int? get depPeriod => throw _privateConstructorUsedError;
  @JsonKey(name: "dep_amt")
  int? get depAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "int_rt")
  double? get intrestRate => throw _privateConstructorUsedError;
  @JsonKey(name: "depDate")
  String? get depDate => throw _privateConstructorUsedError;
  @JsonKey(name: "dueDate")
  String? get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: "clsDate")
  String? get closeDate => throw _privateConstructorUsedError;
  @JsonKey(name: "mat_val")
  int? get maturityValue => throw _privateConstructorUsedError;
  @JsonKey(name: "inst_no")
  int? get installNo => throw _privateConstructorUsedError;
  @JsonKey(name: "scheme_id")
  int? get schemeId => throw _privateConstructorUsedError;
  @JsonKey(name: "currbalance")
  int? get currentBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "branch_name")
  String? get branchName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RdDataCopyWith<RdData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RdDataCopyWith<$Res> {
  factory $RdDataCopyWith(RdData value, $Res Function(RdData) then) =
      _$RdDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "doc_id") String? docId,
      @JsonKey(name: "cus_id") String? cusId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "module_id") int? moduleId,
      @JsonKey(name: "cust_name") String? custName,
      @JsonKey(name: "dep_prd") int? depPeriod,
      @JsonKey(name: "dep_amt") int? depAmount,
      @JsonKey(name: "int_rt") double? intrestRate,
      @JsonKey(name: "depDate") String? depDate,
      @JsonKey(name: "dueDate") String? dueDate,
      @JsonKey(name: "clsDate") String? closeDate,
      @JsonKey(name: "mat_val") int? maturityValue,
      @JsonKey(name: "inst_no") int? installNo,
      @JsonKey(name: "scheme_id") int? schemeId,
      @JsonKey(name: "currbalance") int? currentBalance,
      @JsonKey(name: "branch_name") String? branchName});
}

/// @nodoc
class _$RdDataCopyWithImpl<$Res> implements $RdDataCopyWith<$Res> {
  _$RdDataCopyWithImpl(this._value, this._then);

  final RdData _value;
  // ignore: unused_field
  final $Res Function(RdData) _then;

  @override
  $Res call({
    Object? docId = freezed,
    Object? cusId = freezed,
    Object? branchId = freezed,
    Object? moduleId = freezed,
    Object? custName = freezed,
    Object? depPeriod = freezed,
    Object? depAmount = freezed,
    Object? intrestRate = freezed,
    Object? depDate = freezed,
    Object? dueDate = freezed,
    Object? closeDate = freezed,
    Object? maturityValue = freezed,
    Object? installNo = freezed,
    Object? schemeId = freezed,
    Object? currentBalance = freezed,
    Object? branchName = freezed,
  }) {
    return _then(_value.copyWith(
      docId: docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String?,
      cusId: cusId == freezed
          ? _value.cusId
          : cusId // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      moduleId: moduleId == freezed
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      custName: custName == freezed
          ? _value.custName
          : custName // ignore: cast_nullable_to_non_nullable
              as String?,
      depPeriod: depPeriod == freezed
          ? _value.depPeriod
          : depPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      depAmount: depAmount == freezed
          ? _value.depAmount
          : depAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      intrestRate: intrestRate == freezed
          ? _value.intrestRate
          : intrestRate // ignore: cast_nullable_to_non_nullable
              as double?,
      depDate: depDate == freezed
          ? _value.depDate
          : depDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      closeDate: closeDate == freezed
          ? _value.closeDate
          : closeDate // ignore: cast_nullable_to_non_nullable
              as String?,
      maturityValue: maturityValue == freezed
          ? _value.maturityValue
          : maturityValue // ignore: cast_nullable_to_non_nullable
              as int?,
      installNo: installNo == freezed
          ? _value.installNo
          : installNo // ignore: cast_nullable_to_non_nullable
              as int?,
      schemeId: schemeId == freezed
          ? _value.schemeId
          : schemeId // ignore: cast_nullable_to_non_nullable
              as int?,
      currentBalance: currentBalance == freezed
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as int?,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RdDataCopyWith<$Res> implements $RdDataCopyWith<$Res> {
  factory _$RdDataCopyWith(_RdData value, $Res Function(_RdData) then) =
      __$RdDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "doc_id") String? docId,
      @JsonKey(name: "cus_id") String? cusId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "module_id") int? moduleId,
      @JsonKey(name: "cust_name") String? custName,
      @JsonKey(name: "dep_prd") int? depPeriod,
      @JsonKey(name: "dep_amt") int? depAmount,
      @JsonKey(name: "int_rt") double? intrestRate,
      @JsonKey(name: "depDate") String? depDate,
      @JsonKey(name: "dueDate") String? dueDate,
      @JsonKey(name: "clsDate") String? closeDate,
      @JsonKey(name: "mat_val") int? maturityValue,
      @JsonKey(name: "inst_no") int? installNo,
      @JsonKey(name: "scheme_id") int? schemeId,
      @JsonKey(name: "currbalance") int? currentBalance,
      @JsonKey(name: "branch_name") String? branchName});
}

/// @nodoc
class __$RdDataCopyWithImpl<$Res> extends _$RdDataCopyWithImpl<$Res>
    implements _$RdDataCopyWith<$Res> {
  __$RdDataCopyWithImpl(_RdData _value, $Res Function(_RdData) _then)
      : super(_value, (v) => _then(v as _RdData));

  @override
  _RdData get _value => super._value as _RdData;

  @override
  $Res call({
    Object? docId = freezed,
    Object? cusId = freezed,
    Object? branchId = freezed,
    Object? moduleId = freezed,
    Object? custName = freezed,
    Object? depPeriod = freezed,
    Object? depAmount = freezed,
    Object? intrestRate = freezed,
    Object? depDate = freezed,
    Object? dueDate = freezed,
    Object? closeDate = freezed,
    Object? maturityValue = freezed,
    Object? installNo = freezed,
    Object? schemeId = freezed,
    Object? currentBalance = freezed,
    Object? branchName = freezed,
  }) {
    return _then(_RdData(
      docId: docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String?,
      cusId: cusId == freezed
          ? _value.cusId
          : cusId // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      moduleId: moduleId == freezed
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as int?,
      custName: custName == freezed
          ? _value.custName
          : custName // ignore: cast_nullable_to_non_nullable
              as String?,
      depPeriod: depPeriod == freezed
          ? _value.depPeriod
          : depPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      depAmount: depAmount == freezed
          ? _value.depAmount
          : depAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      intrestRate: intrestRate == freezed
          ? _value.intrestRate
          : intrestRate // ignore: cast_nullable_to_non_nullable
              as double?,
      depDate: depDate == freezed
          ? _value.depDate
          : depDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      closeDate: closeDate == freezed
          ? _value.closeDate
          : closeDate // ignore: cast_nullable_to_non_nullable
              as String?,
      maturityValue: maturityValue == freezed
          ? _value.maturityValue
          : maturityValue // ignore: cast_nullable_to_non_nullable
              as int?,
      installNo: installNo == freezed
          ? _value.installNo
          : installNo // ignore: cast_nullable_to_non_nullable
              as int?,
      schemeId: schemeId == freezed
          ? _value.schemeId
          : schemeId // ignore: cast_nullable_to_non_nullable
              as int?,
      currentBalance: currentBalance == freezed
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as int?,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RdData implements _RdData {
  const _$_RdData(
      {@JsonKey(name: "doc_id") required this.docId,
      @JsonKey(name: "cus_id") this.cusId,
      @JsonKey(name: "branch_id") required this.branchId,
      @JsonKey(name: "module_id") required this.moduleId,
      @JsonKey(name: "cust_name") required this.custName,
      @JsonKey(name: "dep_prd") required this.depPeriod,
      @JsonKey(name: "dep_amt") required this.depAmount,
      @JsonKey(name: "int_rt") required this.intrestRate,
      @JsonKey(name: "depDate") required this.depDate,
      @JsonKey(name: "dueDate") required this.dueDate,
      @JsonKey(name: "clsDate") required this.closeDate,
      @JsonKey(name: "mat_val") required this.maturityValue,
      @JsonKey(name: "inst_no") required this.installNo,
      @JsonKey(name: "scheme_id") required this.schemeId,
      @JsonKey(name: "currbalance") required this.currentBalance,
      @JsonKey(name: "branch_name") required this.branchName});

  factory _$_RdData.fromJson(Map<String, dynamic> json) =>
      _$$_RdDataFromJson(json);

  @override
  @JsonKey(name: "doc_id")
  final String? docId;
  @override
  @JsonKey(name: "cus_id")
  final String? cusId;
  @override
  @JsonKey(name: "branch_id")
  final int? branchId;
  @override
  @JsonKey(name: "module_id")
  final int? moduleId;
  @override
  @JsonKey(name: "cust_name")
  final String? custName;
  @override
  @JsonKey(name: "dep_prd")
  final int? depPeriod;
  @override
  @JsonKey(name: "dep_amt")
  final int? depAmount;
  @override
  @JsonKey(name: "int_rt")
  final double? intrestRate;
  @override
  @JsonKey(name: "depDate")
  final String? depDate;
  @override
  @JsonKey(name: "dueDate")
  final String? dueDate;
  @override
  @JsonKey(name: "clsDate")
  final String? closeDate;
  @override
  @JsonKey(name: "mat_val")
  final int? maturityValue;
  @override
  @JsonKey(name: "inst_no")
  final int? installNo;
  @override
  @JsonKey(name: "scheme_id")
  final int? schemeId;
  @override
  @JsonKey(name: "currbalance")
  final int? currentBalance;
  @override
  @JsonKey(name: "branch_name")
  final String? branchName;

  @override
  String toString() {
    return 'RdData(docId: $docId, cusId: $cusId, branchId: $branchId, moduleId: $moduleId, custName: $custName, depPeriod: $depPeriod, depAmount: $depAmount, intrestRate: $intrestRate, depDate: $depDate, dueDate: $dueDate, closeDate: $closeDate, maturityValue: $maturityValue, installNo: $installNo, schemeId: $schemeId, currentBalance: $currentBalance, branchName: $branchName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RdData &&
            const DeepCollectionEquality().equals(other.docId, docId) &&
            const DeepCollectionEquality().equals(other.cusId, cusId) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality().equals(other.moduleId, moduleId) &&
            const DeepCollectionEquality().equals(other.custName, custName) &&
            const DeepCollectionEquality().equals(other.depPeriod, depPeriod) &&
            const DeepCollectionEquality().equals(other.depAmount, depAmount) &&
            const DeepCollectionEquality()
                .equals(other.intrestRate, intrestRate) &&
            const DeepCollectionEquality().equals(other.depDate, depDate) &&
            const DeepCollectionEquality().equals(other.dueDate, dueDate) &&
            const DeepCollectionEquality().equals(other.closeDate, closeDate) &&
            const DeepCollectionEquality()
                .equals(other.maturityValue, maturityValue) &&
            const DeepCollectionEquality().equals(other.installNo, installNo) &&
            const DeepCollectionEquality().equals(other.schemeId, schemeId) &&
            const DeepCollectionEquality()
                .equals(other.currentBalance, currentBalance) &&
            const DeepCollectionEquality()
                .equals(other.branchName, branchName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(docId),
      const DeepCollectionEquality().hash(cusId),
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(moduleId),
      const DeepCollectionEquality().hash(custName),
      const DeepCollectionEquality().hash(depPeriod),
      const DeepCollectionEquality().hash(depAmount),
      const DeepCollectionEquality().hash(intrestRate),
      const DeepCollectionEquality().hash(depDate),
      const DeepCollectionEquality().hash(dueDate),
      const DeepCollectionEquality().hash(closeDate),
      const DeepCollectionEquality().hash(maturityValue),
      const DeepCollectionEquality().hash(installNo),
      const DeepCollectionEquality().hash(schemeId),
      const DeepCollectionEquality().hash(currentBalance),
      const DeepCollectionEquality().hash(branchName));

  @JsonKey(ignore: true)
  @override
  _$RdDataCopyWith<_RdData> get copyWith =>
      __$RdDataCopyWithImpl<_RdData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RdDataToJson(this);
  }
}

abstract class _RdData implements RdData {
  const factory _RdData(
      {@JsonKey(name: "doc_id") required String? docId,
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
      @JsonKey(name: "branch_name") required String? branchName}) = _$_RdData;

  factory _RdData.fromJson(Map<String, dynamic> json) = _$_RdData.fromJson;

  @override
  @JsonKey(name: "doc_id")
  String? get docId;
  @override
  @JsonKey(name: "cus_id")
  String? get cusId;
  @override
  @JsonKey(name: "branch_id")
  int? get branchId;
  @override
  @JsonKey(name: "module_id")
  int? get moduleId;
  @override
  @JsonKey(name: "cust_name")
  String? get custName;
  @override
  @JsonKey(name: "dep_prd")
  int? get depPeriod;
  @override
  @JsonKey(name: "dep_amt")
  int? get depAmount;
  @override
  @JsonKey(name: "int_rt")
  double? get intrestRate;
  @override
  @JsonKey(name: "depDate")
  String? get depDate;
  @override
  @JsonKey(name: "dueDate")
  String? get dueDate;
  @override
  @JsonKey(name: "clsDate")
  String? get closeDate;
  @override
  @JsonKey(name: "mat_val")
  int? get maturityValue;
  @override
  @JsonKey(name: "inst_no")
  int? get installNo;
  @override
  @JsonKey(name: "scheme_id")
  int? get schemeId;
  @override
  @JsonKey(name: "currbalance")
  int? get currentBalance;
  @override
  @JsonKey(name: "branch_name")
  String? get branchName;
  @override
  @JsonKey(ignore: true)
  _$RdDataCopyWith<_RdData> get copyWith => throw _privateConstructorUsedError;
}

RdStatus _$RdStatusFromJson(Map<String, dynamic> json) {
  return _RdStatus.fromJson(json);
}

/// @nodoc
class _$RdStatusTearOff {
  const _$RdStatusTearOff();

  _RdStatus call(
      {required int flag,
      required int code,
      required String message,
      required String timeStamp}) {
    return _RdStatus(
      flag: flag,
      code: code,
      message: message,
      timeStamp: timeStamp,
    );
  }

  RdStatus fromJson(Map<String, Object?> json) {
    return RdStatus.fromJson(json);
  }
}

/// @nodoc
const $RdStatus = _$RdStatusTearOff();

/// @nodoc
mixin _$RdStatus {
  int get flag => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get timeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RdStatusCopyWith<RdStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RdStatusCopyWith<$Res> {
  factory $RdStatusCopyWith(RdStatus value, $Res Function(RdStatus) then) =
      _$RdStatusCopyWithImpl<$Res>;
  $Res call({int flag, int code, String message, String timeStamp});
}

/// @nodoc
class _$RdStatusCopyWithImpl<$Res> implements $RdStatusCopyWith<$Res> {
  _$RdStatusCopyWithImpl(this._value, this._then);

  final RdStatus _value;
  // ignore: unused_field
  final $Res Function(RdStatus) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RdStatusCopyWith<$Res> implements $RdStatusCopyWith<$Res> {
  factory _$RdStatusCopyWith(_RdStatus value, $Res Function(_RdStatus) then) =
      __$RdStatusCopyWithImpl<$Res>;
  @override
  $Res call({int flag, int code, String message, String timeStamp});
}

/// @nodoc
class __$RdStatusCopyWithImpl<$Res> extends _$RdStatusCopyWithImpl<$Res>
    implements _$RdStatusCopyWith<$Res> {
  __$RdStatusCopyWithImpl(_RdStatus _value, $Res Function(_RdStatus) _then)
      : super(_value, (v) => _then(v as _RdStatus));

  @override
  _RdStatus get _value => super._value as _RdStatus;

  @override
  $Res call({
    Object? flag = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_RdStatus(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RdStatus implements _RdStatus {
  const _$_RdStatus(
      {required this.flag,
      required this.code,
      required this.message,
      required this.timeStamp});

  factory _$_RdStatus.fromJson(Map<String, dynamic> json) =>
      _$$_RdStatusFromJson(json);

  @override
  final int flag;
  @override
  final int code;
  @override
  final String message;
  @override
  final String timeStamp;

  @override
  String toString() {
    return 'RdStatus(flag: $flag, code: $code, message: $message, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RdStatus &&
            const DeepCollectionEquality().equals(other.flag, flag) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.timeStamp, timeStamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flag),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(timeStamp));

  @JsonKey(ignore: true)
  @override
  _$RdStatusCopyWith<_RdStatus> get copyWith =>
      __$RdStatusCopyWithImpl<_RdStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RdStatusToJson(this);
  }
}

abstract class _RdStatus implements RdStatus {
  const factory _RdStatus(
      {required int flag,
      required int code,
      required String message,
      required String timeStamp}) = _$_RdStatus;

  factory _RdStatus.fromJson(Map<String, dynamic> json) = _$_RdStatus.fromJson;

  @override
  int get flag;
  @override
  int get code;
  @override
  String get message;
  @override
  String get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$RdStatusCopyWith<_RdStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

RdinstallmentDatamodel _$RdinstallmentDatamodelFromJson(
    Map<String, dynamic> json) {
  return _RdinstallmentDatamodel.fromJson(json);
}

/// @nodoc
class _$RdinstallmentDatamodelTearOff {
  const _$RdinstallmentDatamodelTearOff();

  _RdinstallmentDatamodel call({required double? status}) {
    return _RdinstallmentDatamodel(
      status: status,
    );
  }

  RdinstallmentDatamodel fromJson(Map<String, Object?> json) {
    return RdinstallmentDatamodel.fromJson(json);
  }
}

/// @nodoc
const $RdinstallmentDatamodel = _$RdinstallmentDatamodelTearOff();

/// @nodoc
mixin _$RdinstallmentDatamodel {
  double? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RdinstallmentDatamodelCopyWith<RdinstallmentDatamodel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RdinstallmentDatamodelCopyWith<$Res> {
  factory $RdinstallmentDatamodelCopyWith(RdinstallmentDatamodel value,
          $Res Function(RdinstallmentDatamodel) then) =
      _$RdinstallmentDatamodelCopyWithImpl<$Res>;
  $Res call({double? status});
}

/// @nodoc
class _$RdinstallmentDatamodelCopyWithImpl<$Res>
    implements $RdinstallmentDatamodelCopyWith<$Res> {
  _$RdinstallmentDatamodelCopyWithImpl(this._value, this._then);

  final RdinstallmentDatamodel _value;
  // ignore: unused_field
  final $Res Function(RdinstallmentDatamodel) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$RdinstallmentDatamodelCopyWith<$Res>
    implements $RdinstallmentDatamodelCopyWith<$Res> {
  factory _$RdinstallmentDatamodelCopyWith(_RdinstallmentDatamodel value,
          $Res Function(_RdinstallmentDatamodel) then) =
      __$RdinstallmentDatamodelCopyWithImpl<$Res>;
  @override
  $Res call({double? status});
}

/// @nodoc
class __$RdinstallmentDatamodelCopyWithImpl<$Res>
    extends _$RdinstallmentDatamodelCopyWithImpl<$Res>
    implements _$RdinstallmentDatamodelCopyWith<$Res> {
  __$RdinstallmentDatamodelCopyWithImpl(_RdinstallmentDatamodel _value,
      $Res Function(_RdinstallmentDatamodel) _then)
      : super(_value, (v) => _then(v as _RdinstallmentDatamodel));

  @override
  _RdinstallmentDatamodel get _value => super._value as _RdinstallmentDatamodel;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_RdinstallmentDatamodel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RdinstallmentDatamodel implements _RdinstallmentDatamodel {
  const _$_RdinstallmentDatamodel({required this.status});

  factory _$_RdinstallmentDatamodel.fromJson(Map<String, dynamic> json) =>
      _$$_RdinstallmentDatamodelFromJson(json);

  @override
  final double? status;

  @override
  String toString() {
    return 'RdinstallmentDatamodel(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RdinstallmentDatamodel &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$RdinstallmentDatamodelCopyWith<_RdinstallmentDatamodel> get copyWith =>
      __$RdinstallmentDatamodelCopyWithImpl<_RdinstallmentDatamodel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RdinstallmentDatamodelToJson(this);
  }
}

abstract class _RdinstallmentDatamodel implements RdinstallmentDatamodel {
  const factory _RdinstallmentDatamodel({required double? status}) =
      _$_RdinstallmentDatamodel;

  factory _RdinstallmentDatamodel.fromJson(Map<String, dynamic> json) =
      _$_RdinstallmentDatamodel.fromJson;

  @override
  double? get status;
  @override
  @JsonKey(ignore: true)
  _$RdinstallmentDatamodelCopyWith<_RdinstallmentDatamodel> get copyWith =>
      throw _privateConstructorUsedError;
}

PostwithdrawalResponseDatamodel _$PostwithdrawalResponseDatamodelFromJson(
    Map<String, dynamic> json) {
  return _PostwithdrawalResponseDatamodel.fromJson(json);
}

/// @nodoc
class _$PostwithdrawalResponseDatamodelTearOff {
  const _$PostwithdrawalResponseDatamodelTearOff();

  _PostwithdrawalResponseDatamodel call(
      {required String status, required String type, required int transId}) {
    return _PostwithdrawalResponseDatamodel(
      status: status,
      type: type,
      transId: transId,
    );
  }

  PostwithdrawalResponseDatamodel fromJson(Map<String, Object?> json) {
    return PostwithdrawalResponseDatamodel.fromJson(json);
  }
}

/// @nodoc
const $PostwithdrawalResponseDatamodel =
    _$PostwithdrawalResponseDatamodelTearOff();

/// @nodoc
mixin _$PostwithdrawalResponseDatamodel {
  String get status => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get transId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostwithdrawalResponseDatamodelCopyWith<PostwithdrawalResponseDatamodel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostwithdrawalResponseDatamodelCopyWith<$Res> {
  factory $PostwithdrawalResponseDatamodelCopyWith(
          PostwithdrawalResponseDatamodel value,
          $Res Function(PostwithdrawalResponseDatamodel) then) =
      _$PostwithdrawalResponseDatamodelCopyWithImpl<$Res>;
  $Res call({String status, String type, int transId});
}

/// @nodoc
class _$PostwithdrawalResponseDatamodelCopyWithImpl<$Res>
    implements $PostwithdrawalResponseDatamodelCopyWith<$Res> {
  _$PostwithdrawalResponseDatamodelCopyWithImpl(this._value, this._then);

  final PostwithdrawalResponseDatamodel _value;
  // ignore: unused_field
  final $Res Function(PostwithdrawalResponseDatamodel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? type = freezed,
    Object? transId = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      transId: transId == freezed
          ? _value.transId
          : transId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PostwithdrawalResponseDatamodelCopyWith<$Res>
    implements $PostwithdrawalResponseDatamodelCopyWith<$Res> {
  factory _$PostwithdrawalResponseDatamodelCopyWith(
          _PostwithdrawalResponseDatamodel value,
          $Res Function(_PostwithdrawalResponseDatamodel) then) =
      __$PostwithdrawalResponseDatamodelCopyWithImpl<$Res>;
  @override
  $Res call({String status, String type, int transId});
}

/// @nodoc
class __$PostwithdrawalResponseDatamodelCopyWithImpl<$Res>
    extends _$PostwithdrawalResponseDatamodelCopyWithImpl<$Res>
    implements _$PostwithdrawalResponseDatamodelCopyWith<$Res> {
  __$PostwithdrawalResponseDatamodelCopyWithImpl(
      _PostwithdrawalResponseDatamodel _value,
      $Res Function(_PostwithdrawalResponseDatamodel) _then)
      : super(_value, (v) => _then(v as _PostwithdrawalResponseDatamodel));

  @override
  _PostwithdrawalResponseDatamodel get _value =>
      super._value as _PostwithdrawalResponseDatamodel;

  @override
  $Res call({
    Object? status = freezed,
    Object? type = freezed,
    Object? transId = freezed,
  }) {
    return _then(_PostwithdrawalResponseDatamodel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      transId: transId == freezed
          ? _value.transId
          : transId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostwithdrawalResponseDatamodel
    implements _PostwithdrawalResponseDatamodel {
  const _$_PostwithdrawalResponseDatamodel(
      {required this.status, required this.type, required this.transId});

  factory _$_PostwithdrawalResponseDatamodel.fromJson(
          Map<String, dynamic> json) =>
      _$$_PostwithdrawalResponseDatamodelFromJson(json);

  @override
  final String status;
  @override
  final String type;
  @override
  final int transId;

  @override
  String toString() {
    return 'PostwithdrawalResponseDatamodel(status: $status, type: $type, transId: $transId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostwithdrawalResponseDatamodel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.transId, transId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(transId));

  @JsonKey(ignore: true)
  @override
  _$PostwithdrawalResponseDatamodelCopyWith<_PostwithdrawalResponseDatamodel>
      get copyWith => __$PostwithdrawalResponseDatamodelCopyWithImpl<
          _PostwithdrawalResponseDatamodel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostwithdrawalResponseDatamodelToJson(this);
  }
}

abstract class _PostwithdrawalResponseDatamodel
    implements PostwithdrawalResponseDatamodel {
  const factory _PostwithdrawalResponseDatamodel(
      {required String status,
      required String type,
      required int transId}) = _$_PostwithdrawalResponseDatamodel;

  factory _PostwithdrawalResponseDatamodel.fromJson(Map<String, dynamic> json) =
      _$_PostwithdrawalResponseDatamodel.fromJson;

  @override
  String get status;
  @override
  String get type;
  @override
  int get transId;
  @override
  @JsonKey(ignore: true)
  _$PostwithdrawalResponseDatamodelCopyWith<_PostwithdrawalResponseDatamodel>
      get copyWith => throw _privateConstructorUsedError;
}
