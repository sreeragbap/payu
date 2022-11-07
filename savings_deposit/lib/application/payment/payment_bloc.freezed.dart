// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaymentEventTearOff {
  const _$PaymentEventTearOff();

  _fetchPaymentTransactionCharges fetchPaymentTransactionCharges() {
    return const _fetchPaymentTransactionCharges();
  }

  _SelectPaymentMode selectPaymentMode({required String value}) {
    return _SelectPaymentMode(
      value: value,
    );
  }

  _CalculatePaymentPayableAmount calculatePaymentPayableAmount(
      {required String amount, required String paymentMode}) {
    return _CalculatePaymentPayableAmount(
      amount: amount,
      paymentMode: paymentMode,
    );
  }

  _PaymentCancelled paymentCancelled() {
    return const _PaymentCancelled();
  }

  _ExternalError externalError() {
    return const _ExternalError();
  }

  _LogPaymentDetails logPaymentDetails(
      {required int firmId,
      required int branchId,
      required int moduleId,
      required String refId,
      required String reqId,
      required String docId,
      required String customerId,
      required double transactioAmount,
      required double refAmount,
      required int gateWayMode,
      required int paymentMode,
      required int applicationFlag,
      required double prevCharge,
      required double serviceCharge,
      required int agentCode,
      required String customerName}) {
    return _LogPaymentDetails(
      firmId: firmId,
      branchId: branchId,
      moduleId: moduleId,
      refId: refId,
      reqId: reqId,
      docId: docId,
      customerId: customerId,
      transactioAmount: transactioAmount,
      refAmount: refAmount,
      gateWayMode: gateWayMode,
      paymentMode: paymentMode,
      applicationFlag: applicationFlag,
      prevCharge: prevCharge,
      serviceCharge: serviceCharge,
      agentCode: agentCode,
      customerName: customerName,
    );
  }

  _LogPaymentStatus logPaymentStatus(
      {required String refId,
      required String reqId,
      required String custId,
      required String docId,
      required double transactionAmount,
      required String gatewayTransId,
      required String confirmString,
      required String errorString,
      required String resString,
      required String resTransId,
      required double refAmount,
      required int gatewayMode,
      required int paymentMode,
      required int applicationFlag,
      required double prevCharge,
      required double serCharge,
      required int agentMode}) {
    return _LogPaymentStatus(
      refId: refId,
      reqId: reqId,
      custId: custId,
      docId: docId,
      transactionAmount: transactionAmount,
      gatewayTransId: gatewayTransId,
      confirmString: confirmString,
      errorString: errorString,
      resString: resString,
      resTransId: resTransId,
      refAmount: refAmount,
      gatewayMode: gatewayMode,
      paymentMode: paymentMode,
      applicationFlag: applicationFlag,
      prevCharge: prevCharge,
      serCharge: serCharge,
      agentMode: agentMode,
    );
  }
}

/// @nodoc
const $PaymentEvent = _$PaymentEventTearOff();

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPaymentTransactionCharges,
    required TResult Function(String value) selectPaymentMode,
    required TResult Function(String amount, String paymentMode)
        calculatePaymentPayableAmount,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPaymentTransactionCharges value)
        fetchPaymentTransactionCharges,
    required TResult Function(_SelectPaymentMode value) selectPaymentMode,
    required TResult Function(_CalculatePaymentPayableAmount value)
        calculatePaymentPayableAmount,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res> implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  final PaymentEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentEvent) _then;
}

/// @nodoc
abstract class _$fetchPaymentTransactionChargesCopyWith<$Res> {
  factory _$fetchPaymentTransactionChargesCopyWith(
          _fetchPaymentTransactionCharges value,
          $Res Function(_fetchPaymentTransactionCharges) then) =
      __$fetchPaymentTransactionChargesCopyWithImpl<$Res>;
}

/// @nodoc
class __$fetchPaymentTransactionChargesCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements _$fetchPaymentTransactionChargesCopyWith<$Res> {
  __$fetchPaymentTransactionChargesCopyWithImpl(
      _fetchPaymentTransactionCharges _value,
      $Res Function(_fetchPaymentTransactionCharges) _then)
      : super(_value, (v) => _then(v as _fetchPaymentTransactionCharges));

  @override
  _fetchPaymentTransactionCharges get _value =>
      super._value as _fetchPaymentTransactionCharges;
}

/// @nodoc

class _$_fetchPaymentTransactionCharges
    implements _fetchPaymentTransactionCharges {
  const _$_fetchPaymentTransactionCharges();

  @override
  String toString() {
    return 'PaymentEvent.fetchPaymentTransactionCharges()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _fetchPaymentTransactionCharges);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPaymentTransactionCharges,
    required TResult Function(String value) selectPaymentMode,
    required TResult Function(String amount, String paymentMode)
        calculatePaymentPayableAmount,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return fetchPaymentTransactionCharges();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return fetchPaymentTransactionCharges?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (fetchPaymentTransactionCharges != null) {
      return fetchPaymentTransactionCharges();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPaymentTransactionCharges value)
        fetchPaymentTransactionCharges,
    required TResult Function(_SelectPaymentMode value) selectPaymentMode,
    required TResult Function(_CalculatePaymentPayableAmount value)
        calculatePaymentPayableAmount,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return fetchPaymentTransactionCharges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return fetchPaymentTransactionCharges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (fetchPaymentTransactionCharges != null) {
      return fetchPaymentTransactionCharges(this);
    }
    return orElse();
  }
}

abstract class _fetchPaymentTransactionCharges implements PaymentEvent {
  const factory _fetchPaymentTransactionCharges() =
      _$_fetchPaymentTransactionCharges;
}

/// @nodoc
abstract class _$SelectPaymentModeCopyWith<$Res> {
  factory _$SelectPaymentModeCopyWith(
          _SelectPaymentMode value, $Res Function(_SelectPaymentMode) then) =
      __$SelectPaymentModeCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$SelectPaymentModeCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements _$SelectPaymentModeCopyWith<$Res> {
  __$SelectPaymentModeCopyWithImpl(
      _SelectPaymentMode _value, $Res Function(_SelectPaymentMode) _then)
      : super(_value, (v) => _then(v as _SelectPaymentMode));

  @override
  _SelectPaymentMode get _value => super._value as _SelectPaymentMode;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_SelectPaymentMode(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectPaymentMode implements _SelectPaymentMode {
  const _$_SelectPaymentMode({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'PaymentEvent.selectPaymentMode(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectPaymentMode &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$SelectPaymentModeCopyWith<_SelectPaymentMode> get copyWith =>
      __$SelectPaymentModeCopyWithImpl<_SelectPaymentMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPaymentTransactionCharges,
    required TResult Function(String value) selectPaymentMode,
    required TResult Function(String amount, String paymentMode)
        calculatePaymentPayableAmount,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return selectPaymentMode(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return selectPaymentMode?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (selectPaymentMode != null) {
      return selectPaymentMode(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPaymentTransactionCharges value)
        fetchPaymentTransactionCharges,
    required TResult Function(_SelectPaymentMode value) selectPaymentMode,
    required TResult Function(_CalculatePaymentPayableAmount value)
        calculatePaymentPayableAmount,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return selectPaymentMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return selectPaymentMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (selectPaymentMode != null) {
      return selectPaymentMode(this);
    }
    return orElse();
  }
}

abstract class _SelectPaymentMode implements PaymentEvent {
  const factory _SelectPaymentMode({required String value}) =
      _$_SelectPaymentMode;

  String get value;
  @JsonKey(ignore: true)
  _$SelectPaymentModeCopyWith<_SelectPaymentMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CalculatePaymentPayableAmountCopyWith<$Res> {
  factory _$CalculatePaymentPayableAmountCopyWith(
          _CalculatePaymentPayableAmount value,
          $Res Function(_CalculatePaymentPayableAmount) then) =
      __$CalculatePaymentPayableAmountCopyWithImpl<$Res>;
  $Res call({String amount, String paymentMode});
}

/// @nodoc
class __$CalculatePaymentPayableAmountCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements _$CalculatePaymentPayableAmountCopyWith<$Res> {
  __$CalculatePaymentPayableAmountCopyWithImpl(
      _CalculatePaymentPayableAmount _value,
      $Res Function(_CalculatePaymentPayableAmount) _then)
      : super(_value, (v) => _then(v as _CalculatePaymentPayableAmount));

  @override
  _CalculatePaymentPayableAmount get _value =>
      super._value as _CalculatePaymentPayableAmount;

  @override
  $Res call({
    Object? amount = freezed,
    Object? paymentMode = freezed,
  }) {
    return _then(_CalculatePaymentPayableAmount(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMode: paymentMode == freezed
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CalculatePaymentPayableAmount
    implements _CalculatePaymentPayableAmount {
  const _$_CalculatePaymentPayableAmount(
      {required this.amount, required this.paymentMode});

  @override
  final String amount;
  @override
  final String paymentMode;

  @override
  String toString() {
    return 'PaymentEvent.calculatePaymentPayableAmount(amount: $amount, paymentMode: $paymentMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalculatePaymentPayableAmount &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.paymentMode, paymentMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(paymentMode));

  @JsonKey(ignore: true)
  @override
  _$CalculatePaymentPayableAmountCopyWith<_CalculatePaymentPayableAmount>
      get copyWith => __$CalculatePaymentPayableAmountCopyWithImpl<
          _CalculatePaymentPayableAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPaymentTransactionCharges,
    required TResult Function(String value) selectPaymentMode,
    required TResult Function(String amount, String paymentMode)
        calculatePaymentPayableAmount,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return calculatePaymentPayableAmount(amount, paymentMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return calculatePaymentPayableAmount?.call(amount, paymentMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (calculatePaymentPayableAmount != null) {
      return calculatePaymentPayableAmount(amount, paymentMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPaymentTransactionCharges value)
        fetchPaymentTransactionCharges,
    required TResult Function(_SelectPaymentMode value) selectPaymentMode,
    required TResult Function(_CalculatePaymentPayableAmount value)
        calculatePaymentPayableAmount,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return calculatePaymentPayableAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return calculatePaymentPayableAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (calculatePaymentPayableAmount != null) {
      return calculatePaymentPayableAmount(this);
    }
    return orElse();
  }
}

abstract class _CalculatePaymentPayableAmount implements PaymentEvent {
  const factory _CalculatePaymentPayableAmount(
      {required String amount,
      required String paymentMode}) = _$_CalculatePaymentPayableAmount;

  String get amount;
  String get paymentMode;
  @JsonKey(ignore: true)
  _$CalculatePaymentPayableAmountCopyWith<_CalculatePaymentPayableAmount>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PaymentCancelledCopyWith<$Res> {
  factory _$PaymentCancelledCopyWith(
          _PaymentCancelled value, $Res Function(_PaymentCancelled) then) =
      __$PaymentCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$PaymentCancelledCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements _$PaymentCancelledCopyWith<$Res> {
  __$PaymentCancelledCopyWithImpl(
      _PaymentCancelled _value, $Res Function(_PaymentCancelled) _then)
      : super(_value, (v) => _then(v as _PaymentCancelled));

  @override
  _PaymentCancelled get _value => super._value as _PaymentCancelled;
}

/// @nodoc

class _$_PaymentCancelled implements _PaymentCancelled {
  const _$_PaymentCancelled();

  @override
  String toString() {
    return 'PaymentEvent.paymentCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PaymentCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPaymentTransactionCharges,
    required TResult Function(String value) selectPaymentMode,
    required TResult Function(String amount, String paymentMode)
        calculatePaymentPayableAmount,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return paymentCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return paymentCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (paymentCancelled != null) {
      return paymentCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPaymentTransactionCharges value)
        fetchPaymentTransactionCharges,
    required TResult Function(_SelectPaymentMode value) selectPaymentMode,
    required TResult Function(_CalculatePaymentPayableAmount value)
        calculatePaymentPayableAmount,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return paymentCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return paymentCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (paymentCancelled != null) {
      return paymentCancelled(this);
    }
    return orElse();
  }
}

abstract class _PaymentCancelled implements PaymentEvent {
  const factory _PaymentCancelled() = _$_PaymentCancelled;
}

/// @nodoc
abstract class _$ExternalErrorCopyWith<$Res> {
  factory _$ExternalErrorCopyWith(
          _ExternalError value, $Res Function(_ExternalError) then) =
      __$ExternalErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExternalErrorCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements _$ExternalErrorCopyWith<$Res> {
  __$ExternalErrorCopyWithImpl(
      _ExternalError _value, $Res Function(_ExternalError) _then)
      : super(_value, (v) => _then(v as _ExternalError));

  @override
  _ExternalError get _value => super._value as _ExternalError;
}

/// @nodoc

class _$_ExternalError implements _ExternalError {
  const _$_ExternalError();

  @override
  String toString() {
    return 'PaymentEvent.externalError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ExternalError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPaymentTransactionCharges,
    required TResult Function(String value) selectPaymentMode,
    required TResult Function(String amount, String paymentMode)
        calculatePaymentPayableAmount,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return externalError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return externalError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (externalError != null) {
      return externalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPaymentTransactionCharges value)
        fetchPaymentTransactionCharges,
    required TResult Function(_SelectPaymentMode value) selectPaymentMode,
    required TResult Function(_CalculatePaymentPayableAmount value)
        calculatePaymentPayableAmount,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return externalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return externalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (externalError != null) {
      return externalError(this);
    }
    return orElse();
  }
}

abstract class _ExternalError implements PaymentEvent {
  const factory _ExternalError() = _$_ExternalError;
}

/// @nodoc
abstract class _$LogPaymentDetailsCopyWith<$Res> {
  factory _$LogPaymentDetailsCopyWith(
          _LogPaymentDetails value, $Res Function(_LogPaymentDetails) then) =
      __$LogPaymentDetailsCopyWithImpl<$Res>;
  $Res call(
      {int firmId,
      int branchId,
      int moduleId,
      String refId,
      String reqId,
      String docId,
      String customerId,
      double transactioAmount,
      double refAmount,
      int gateWayMode,
      int paymentMode,
      int applicationFlag,
      double prevCharge,
      double serviceCharge,
      int agentCode,
      String customerName});
}

/// @nodoc
class __$LogPaymentDetailsCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements _$LogPaymentDetailsCopyWith<$Res> {
  __$LogPaymentDetailsCopyWithImpl(
      _LogPaymentDetails _value, $Res Function(_LogPaymentDetails) _then)
      : super(_value, (v) => _then(v as _LogPaymentDetails));

  @override
  _LogPaymentDetails get _value => super._value as _LogPaymentDetails;

  @override
  $Res call({
    Object? firmId = freezed,
    Object? branchId = freezed,
    Object? moduleId = freezed,
    Object? refId = freezed,
    Object? reqId = freezed,
    Object? docId = freezed,
    Object? customerId = freezed,
    Object? transactioAmount = freezed,
    Object? refAmount = freezed,
    Object? gateWayMode = freezed,
    Object? paymentMode = freezed,
    Object? applicationFlag = freezed,
    Object? prevCharge = freezed,
    Object? serviceCharge = freezed,
    Object? agentCode = freezed,
    Object? customerName = freezed,
  }) {
    return _then(_LogPaymentDetails(
      firmId: firmId == freezed
          ? _value.firmId
          : firmId // ignore: cast_nullable_to_non_nullable
              as int,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int,
      moduleId: moduleId == freezed
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as int,
      refId: refId == freezed
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      reqId: reqId == freezed
          ? _value.reqId
          : reqId // ignore: cast_nullable_to_non_nullable
              as String,
      docId: docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      transactioAmount: transactioAmount == freezed
          ? _value.transactioAmount
          : transactioAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refAmount: refAmount == freezed
          ? _value.refAmount
          : refAmount // ignore: cast_nullable_to_non_nullable
              as double,
      gateWayMode: gateWayMode == freezed
          ? _value.gateWayMode
          : gateWayMode // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMode: paymentMode == freezed
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as int,
      applicationFlag: applicationFlag == freezed
          ? _value.applicationFlag
          : applicationFlag // ignore: cast_nullable_to_non_nullable
              as int,
      prevCharge: prevCharge == freezed
          ? _value.prevCharge
          : prevCharge // ignore: cast_nullable_to_non_nullable
              as double,
      serviceCharge: serviceCharge == freezed
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as double,
      agentCode: agentCode == freezed
          ? _value.agentCode
          : agentCode // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LogPaymentDetails implements _LogPaymentDetails {
  const _$_LogPaymentDetails(
      {required this.firmId,
      required this.branchId,
      required this.moduleId,
      required this.refId,
      required this.reqId,
      required this.docId,
      required this.customerId,
      required this.transactioAmount,
      required this.refAmount,
      required this.gateWayMode,
      required this.paymentMode,
      required this.applicationFlag,
      required this.prevCharge,
      required this.serviceCharge,
      required this.agentCode,
      required this.customerName});

  @override
  final int firmId;
  @override
  final int branchId;
  @override
  final int moduleId;
  @override
  final String refId;
  @override
  final String reqId;
  @override
  final String docId;
  @override
  final String customerId;
  @override
  final double transactioAmount;
  @override
  final double refAmount;
  @override
  final int gateWayMode;
  @override
  final int paymentMode;
  @override
  final int applicationFlag;
  @override
  final double prevCharge;
  @override
  final double serviceCharge;
  @override
  final int agentCode;
  @override
  final String customerName;

  @override
  String toString() {
    return 'PaymentEvent.logPaymentDetails(firmId: $firmId, branchId: $branchId, moduleId: $moduleId, refId: $refId, reqId: $reqId, docId: $docId, customerId: $customerId, transactioAmount: $transactioAmount, refAmount: $refAmount, gateWayMode: $gateWayMode, paymentMode: $paymentMode, applicationFlag: $applicationFlag, prevCharge: $prevCharge, serviceCharge: $serviceCharge, agentCode: $agentCode, customerName: $customerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogPaymentDetails &&
            const DeepCollectionEquality().equals(other.firmId, firmId) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality().equals(other.moduleId, moduleId) &&
            const DeepCollectionEquality().equals(other.refId, refId) &&
            const DeepCollectionEquality().equals(other.reqId, reqId) &&
            const DeepCollectionEquality().equals(other.docId, docId) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.transactioAmount, transactioAmount) &&
            const DeepCollectionEquality().equals(other.refAmount, refAmount) &&
            const DeepCollectionEquality()
                .equals(other.gateWayMode, gateWayMode) &&
            const DeepCollectionEquality()
                .equals(other.paymentMode, paymentMode) &&
            const DeepCollectionEquality()
                .equals(other.applicationFlag, applicationFlag) &&
            const DeepCollectionEquality()
                .equals(other.prevCharge, prevCharge) &&
            const DeepCollectionEquality()
                .equals(other.serviceCharge, serviceCharge) &&
            const DeepCollectionEquality().equals(other.agentCode, agentCode) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firmId),
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(moduleId),
      const DeepCollectionEquality().hash(refId),
      const DeepCollectionEquality().hash(reqId),
      const DeepCollectionEquality().hash(docId),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(transactioAmount),
      const DeepCollectionEquality().hash(refAmount),
      const DeepCollectionEquality().hash(gateWayMode),
      const DeepCollectionEquality().hash(paymentMode),
      const DeepCollectionEquality().hash(applicationFlag),
      const DeepCollectionEquality().hash(prevCharge),
      const DeepCollectionEquality().hash(serviceCharge),
      const DeepCollectionEquality().hash(agentCode),
      const DeepCollectionEquality().hash(customerName));

  @JsonKey(ignore: true)
  @override
  _$LogPaymentDetailsCopyWith<_LogPaymentDetails> get copyWith =>
      __$LogPaymentDetailsCopyWithImpl<_LogPaymentDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPaymentTransactionCharges,
    required TResult Function(String value) selectPaymentMode,
    required TResult Function(String amount, String paymentMode)
        calculatePaymentPayableAmount,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return logPaymentDetails(
        firmId,
        branchId,
        moduleId,
        refId,
        reqId,
        docId,
        customerId,
        transactioAmount,
        refAmount,
        gateWayMode,
        paymentMode,
        applicationFlag,
        prevCharge,
        serviceCharge,
        agentCode,
        customerName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return logPaymentDetails?.call(
        firmId,
        branchId,
        moduleId,
        refId,
        reqId,
        docId,
        customerId,
        transactioAmount,
        refAmount,
        gateWayMode,
        paymentMode,
        applicationFlag,
        prevCharge,
        serviceCharge,
        agentCode,
        customerName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (logPaymentDetails != null) {
      return logPaymentDetails(
          firmId,
          branchId,
          moduleId,
          refId,
          reqId,
          docId,
          customerId,
          transactioAmount,
          refAmount,
          gateWayMode,
          paymentMode,
          applicationFlag,
          prevCharge,
          serviceCharge,
          agentCode,
          customerName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPaymentTransactionCharges value)
        fetchPaymentTransactionCharges,
    required TResult Function(_SelectPaymentMode value) selectPaymentMode,
    required TResult Function(_CalculatePaymentPayableAmount value)
        calculatePaymentPayableAmount,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return logPaymentDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return logPaymentDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (logPaymentDetails != null) {
      return logPaymentDetails(this);
    }
    return orElse();
  }
}

abstract class _LogPaymentDetails implements PaymentEvent {
  const factory _LogPaymentDetails(
      {required int firmId,
      required int branchId,
      required int moduleId,
      required String refId,
      required String reqId,
      required String docId,
      required String customerId,
      required double transactioAmount,
      required double refAmount,
      required int gateWayMode,
      required int paymentMode,
      required int applicationFlag,
      required double prevCharge,
      required double serviceCharge,
      required int agentCode,
      required String customerName}) = _$_LogPaymentDetails;

  int get firmId;
  int get branchId;
  int get moduleId;
  String get refId;
  String get reqId;
  String get docId;
  String get customerId;
  double get transactioAmount;
  double get refAmount;
  int get gateWayMode;
  int get paymentMode;
  int get applicationFlag;
  double get prevCharge;
  double get serviceCharge;
  int get agentCode;
  String get customerName;
  @JsonKey(ignore: true)
  _$LogPaymentDetailsCopyWith<_LogPaymentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogPaymentStatusCopyWith<$Res> {
  factory _$LogPaymentStatusCopyWith(
          _LogPaymentStatus value, $Res Function(_LogPaymentStatus) then) =
      __$LogPaymentStatusCopyWithImpl<$Res>;
  $Res call(
      {String refId,
      String reqId,
      String custId,
      String docId,
      double transactionAmount,
      String gatewayTransId,
      String confirmString,
      String errorString,
      String resString,
      String resTransId,
      double refAmount,
      int gatewayMode,
      int paymentMode,
      int applicationFlag,
      double prevCharge,
      double serCharge,
      int agentMode});
}

/// @nodoc
class __$LogPaymentStatusCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements _$LogPaymentStatusCopyWith<$Res> {
  __$LogPaymentStatusCopyWithImpl(
      _LogPaymentStatus _value, $Res Function(_LogPaymentStatus) _then)
      : super(_value, (v) => _then(v as _LogPaymentStatus));

  @override
  _LogPaymentStatus get _value => super._value as _LogPaymentStatus;

  @override
  $Res call({
    Object? refId = freezed,
    Object? reqId = freezed,
    Object? custId = freezed,
    Object? docId = freezed,
    Object? transactionAmount = freezed,
    Object? gatewayTransId = freezed,
    Object? confirmString = freezed,
    Object? errorString = freezed,
    Object? resString = freezed,
    Object? resTransId = freezed,
    Object? refAmount = freezed,
    Object? gatewayMode = freezed,
    Object? paymentMode = freezed,
    Object? applicationFlag = freezed,
    Object? prevCharge = freezed,
    Object? serCharge = freezed,
    Object? agentMode = freezed,
  }) {
    return _then(_LogPaymentStatus(
      refId: refId == freezed
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      reqId: reqId == freezed
          ? _value.reqId
          : reqId // ignore: cast_nullable_to_non_nullable
              as String,
      custId: custId == freezed
          ? _value.custId
          : custId // ignore: cast_nullable_to_non_nullable
              as String,
      docId: docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionAmount: transactionAmount == freezed
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as double,
      gatewayTransId: gatewayTransId == freezed
          ? _value.gatewayTransId
          : gatewayTransId // ignore: cast_nullable_to_non_nullable
              as String,
      confirmString: confirmString == freezed
          ? _value.confirmString
          : confirmString // ignore: cast_nullable_to_non_nullable
              as String,
      errorString: errorString == freezed
          ? _value.errorString
          : errorString // ignore: cast_nullable_to_non_nullable
              as String,
      resString: resString == freezed
          ? _value.resString
          : resString // ignore: cast_nullable_to_non_nullable
              as String,
      resTransId: resTransId == freezed
          ? _value.resTransId
          : resTransId // ignore: cast_nullable_to_non_nullable
              as String,
      refAmount: refAmount == freezed
          ? _value.refAmount
          : refAmount // ignore: cast_nullable_to_non_nullable
              as double,
      gatewayMode: gatewayMode == freezed
          ? _value.gatewayMode
          : gatewayMode // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMode: paymentMode == freezed
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as int,
      applicationFlag: applicationFlag == freezed
          ? _value.applicationFlag
          : applicationFlag // ignore: cast_nullable_to_non_nullable
              as int,
      prevCharge: prevCharge == freezed
          ? _value.prevCharge
          : prevCharge // ignore: cast_nullable_to_non_nullable
              as double,
      serCharge: serCharge == freezed
          ? _value.serCharge
          : serCharge // ignore: cast_nullable_to_non_nullable
              as double,
      agentMode: agentMode == freezed
          ? _value.agentMode
          : agentMode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LogPaymentStatus implements _LogPaymentStatus {
  const _$_LogPaymentStatus(
      {required this.refId,
      required this.reqId,
      required this.custId,
      required this.docId,
      required this.transactionAmount,
      required this.gatewayTransId,
      required this.confirmString,
      required this.errorString,
      required this.resString,
      required this.resTransId,
      required this.refAmount,
      required this.gatewayMode,
      required this.paymentMode,
      required this.applicationFlag,
      required this.prevCharge,
      required this.serCharge,
      required this.agentMode});

  @override
  final String refId;
  @override
  final String reqId;
  @override
  final String custId;
  @override
  final String docId;
  @override
  final double transactionAmount;
  @override
  final String gatewayTransId;
  @override
  final String confirmString;
  @override
  final String errorString;
  @override
  final String resString;
  @override
  final String resTransId;
  @override
  final double refAmount;
  @override
  final int gatewayMode;
  @override
  final int paymentMode;
  @override
  final int applicationFlag;
  @override
  final double prevCharge;
  @override
  final double serCharge;
  @override
  final int agentMode;

  @override
  String toString() {
    return 'PaymentEvent.logPaymentStatus(refId: $refId, reqId: $reqId, custId: $custId, docId: $docId, transactionAmount: $transactionAmount, gatewayTransId: $gatewayTransId, confirmString: $confirmString, errorString: $errorString, resString: $resString, resTransId: $resTransId, refAmount: $refAmount, gatewayMode: $gatewayMode, paymentMode: $paymentMode, applicationFlag: $applicationFlag, prevCharge: $prevCharge, serCharge: $serCharge, agentMode: $agentMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogPaymentStatus &&
            const DeepCollectionEquality().equals(other.refId, refId) &&
            const DeepCollectionEquality().equals(other.reqId, reqId) &&
            const DeepCollectionEquality().equals(other.custId, custId) &&
            const DeepCollectionEquality().equals(other.docId, docId) &&
            const DeepCollectionEquality()
                .equals(other.transactionAmount, transactionAmount) &&
            const DeepCollectionEquality()
                .equals(other.gatewayTransId, gatewayTransId) &&
            const DeepCollectionEquality()
                .equals(other.confirmString, confirmString) &&
            const DeepCollectionEquality()
                .equals(other.errorString, errorString) &&
            const DeepCollectionEquality().equals(other.resString, resString) &&
            const DeepCollectionEquality()
                .equals(other.resTransId, resTransId) &&
            const DeepCollectionEquality().equals(other.refAmount, refAmount) &&
            const DeepCollectionEquality()
                .equals(other.gatewayMode, gatewayMode) &&
            const DeepCollectionEquality()
                .equals(other.paymentMode, paymentMode) &&
            const DeepCollectionEquality()
                .equals(other.applicationFlag, applicationFlag) &&
            const DeepCollectionEquality()
                .equals(other.prevCharge, prevCharge) &&
            const DeepCollectionEquality().equals(other.serCharge, serCharge) &&
            const DeepCollectionEquality().equals(other.agentMode, agentMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(refId),
      const DeepCollectionEquality().hash(reqId),
      const DeepCollectionEquality().hash(custId),
      const DeepCollectionEquality().hash(docId),
      const DeepCollectionEquality().hash(transactionAmount),
      const DeepCollectionEquality().hash(gatewayTransId),
      const DeepCollectionEquality().hash(confirmString),
      const DeepCollectionEquality().hash(errorString),
      const DeepCollectionEquality().hash(resString),
      const DeepCollectionEquality().hash(resTransId),
      const DeepCollectionEquality().hash(refAmount),
      const DeepCollectionEquality().hash(gatewayMode),
      const DeepCollectionEquality().hash(paymentMode),
      const DeepCollectionEquality().hash(applicationFlag),
      const DeepCollectionEquality().hash(prevCharge),
      const DeepCollectionEquality().hash(serCharge),
      const DeepCollectionEquality().hash(agentMode));

  @JsonKey(ignore: true)
  @override
  _$LogPaymentStatusCopyWith<_LogPaymentStatus> get copyWith =>
      __$LogPaymentStatusCopyWithImpl<_LogPaymentStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPaymentTransactionCharges,
    required TResult Function(String value) selectPaymentMode,
    required TResult Function(String amount, String paymentMode)
        calculatePaymentPayableAmount,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return logPaymentStatus(
        refId,
        reqId,
        custId,
        docId,
        transactionAmount,
        gatewayTransId,
        confirmString,
        errorString,
        resString,
        resTransId,
        refAmount,
        gatewayMode,
        paymentMode,
        applicationFlag,
        prevCharge,
        serCharge,
        agentMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return logPaymentStatus?.call(
        refId,
        reqId,
        custId,
        docId,
        transactionAmount,
        gatewayTransId,
        confirmString,
        errorString,
        resString,
        resTransId,
        refAmount,
        gatewayMode,
        paymentMode,
        applicationFlag,
        prevCharge,
        serCharge,
        agentMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPaymentTransactionCharges,
    TResult Function(String value)? selectPaymentMode,
    TResult Function(String amount, String paymentMode)?
        calculatePaymentPayableAmount,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (logPaymentStatus != null) {
      return logPaymentStatus(
          refId,
          reqId,
          custId,
          docId,
          transactionAmount,
          gatewayTransId,
          confirmString,
          errorString,
          resString,
          resTransId,
          refAmount,
          gatewayMode,
          paymentMode,
          applicationFlag,
          prevCharge,
          serCharge,
          agentMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPaymentTransactionCharges value)
        fetchPaymentTransactionCharges,
    required TResult Function(_SelectPaymentMode value) selectPaymentMode,
    required TResult Function(_CalculatePaymentPayableAmount value)
        calculatePaymentPayableAmount,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return logPaymentStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return logPaymentStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPaymentTransactionCharges value)?
        fetchPaymentTransactionCharges,
    TResult Function(_SelectPaymentMode value)? selectPaymentMode,
    TResult Function(_CalculatePaymentPayableAmount value)?
        calculatePaymentPayableAmount,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (logPaymentStatus != null) {
      return logPaymentStatus(this);
    }
    return orElse();
  }
}

abstract class _LogPaymentStatus implements PaymentEvent {
  const factory _LogPaymentStatus(
      {required String refId,
      required String reqId,
      required String custId,
      required String docId,
      required double transactionAmount,
      required String gatewayTransId,
      required String confirmString,
      required String errorString,
      required String resString,
      required String resTransId,
      required double refAmount,
      required int gatewayMode,
      required int paymentMode,
      required int applicationFlag,
      required double prevCharge,
      required double serCharge,
      required int agentMode}) = _$_LogPaymentStatus;

  String get refId;
  String get reqId;
  String get custId;
  String get docId;
  double get transactionAmount;
  String get gatewayTransId;
  String get confirmString;
  String get errorString;
  String get resString;
  String get resTransId;
  double get refAmount;
  int get gatewayMode;
  int get paymentMode;
  int get applicationFlag;
  double get prevCharge;
  double get serCharge;
  int get agentMode;
  @JsonKey(ignore: true)
  _$LogPaymentStatusCopyWith<_LogPaymentStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

  _PaymentState call(
      {required String? generatedOrderKey,
      required bool? isLoading,
      OrderResponse? orderResponse,
      required List<TransactionCharge>? transactionCharges,
      required String? paymentMode,
      required int? paymentPayableAmonut,
      required Option<Either<PaymentFailure, List<TransactionCharge>>>
          paymentTransactionChargesFailureOrSuccessOption,
      required Option<Either<PaymentFailure, OrderResponse>>
          generateOrderIdFailureORSuccessOption,
      required Option<Either<PaymentFailure, String>>
          startPaymentFailureOrSuccessOption,
      required Option<Either<PaymentFailure, String>>
          logPaymentDetailsFailureOrSuccess,
      required Option<Either<PaymentFailure, String>>
          logPaymentStatusFailureOrSuccess}) {
    return _PaymentState(
      generatedOrderKey: generatedOrderKey,
      isLoading: isLoading,
      orderResponse: orderResponse,
      transactionCharges: transactionCharges,
      paymentMode: paymentMode,
      paymentPayableAmonut: paymentPayableAmonut,
      paymentTransactionChargesFailureOrSuccessOption:
          paymentTransactionChargesFailureOrSuccessOption,
      generateOrderIdFailureORSuccessOption:
          generateOrderIdFailureORSuccessOption,
      startPaymentFailureOrSuccessOption: startPaymentFailureOrSuccessOption,
      logPaymentDetailsFailureOrSuccess: logPaymentDetailsFailureOrSuccess,
      logPaymentStatusFailureOrSuccess: logPaymentStatusFailureOrSuccess,
    );
  }
}

/// @nodoc
const $PaymentState = _$PaymentStateTearOff();

/// @nodoc
mixin _$PaymentState {
  String? get generatedOrderKey => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  OrderResponse? get orderResponse => throw _privateConstructorUsedError;
  List<TransactionCharge>? get transactionCharges =>
      throw _privateConstructorUsedError;
  String? get paymentMode => throw _privateConstructorUsedError;
  int? get paymentPayableAmonut => throw _privateConstructorUsedError;
  Option<Either<PaymentFailure, List<TransactionCharge>>>
      get paymentTransactionChargesFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<PaymentFailure, OrderResponse>>
      get generateOrderIdFailureORSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<PaymentFailure, String>>
      get startPaymentFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<PaymentFailure, String>>
      get logPaymentDetailsFailureOrSuccess =>
          throw _privateConstructorUsedError;
  Option<Either<PaymentFailure, String>> get logPaymentStatusFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
  $Res call(
      {String? generatedOrderKey,
      bool? isLoading,
      OrderResponse? orderResponse,
      List<TransactionCharge>? transactionCharges,
      String? paymentMode,
      int? paymentPayableAmonut,
      Option<Either<PaymentFailure, List<TransactionCharge>>>
          paymentTransactionChargesFailureOrSuccessOption,
      Option<Either<PaymentFailure, OrderResponse>>
          generateOrderIdFailureORSuccessOption,
      Option<Either<PaymentFailure, String>> startPaymentFailureOrSuccessOption,
      Option<Either<PaymentFailure, String>> logPaymentDetailsFailureOrSuccess,
      Option<Either<PaymentFailure, String>> logPaymentStatusFailureOrSuccess});

  $OrderResponseCopyWith<$Res>? get orderResponse;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;

  @override
  $Res call({
    Object? generatedOrderKey = freezed,
    Object? isLoading = freezed,
    Object? orderResponse = freezed,
    Object? transactionCharges = freezed,
    Object? paymentMode = freezed,
    Object? paymentPayableAmonut = freezed,
    Object? paymentTransactionChargesFailureOrSuccessOption = freezed,
    Object? generateOrderIdFailureORSuccessOption = freezed,
    Object? startPaymentFailureOrSuccessOption = freezed,
    Object? logPaymentDetailsFailureOrSuccess = freezed,
    Object? logPaymentStatusFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      generatedOrderKey: generatedOrderKey == freezed
          ? _value.generatedOrderKey
          : generatedOrderKey // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderResponse: orderResponse == freezed
          ? _value.orderResponse
          : orderResponse // ignore: cast_nullable_to_non_nullable
              as OrderResponse?,
      transactionCharges: transactionCharges == freezed
          ? _value.transactionCharges
          : transactionCharges // ignore: cast_nullable_to_non_nullable
              as List<TransactionCharge>?,
      paymentMode: paymentMode == freezed
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentPayableAmonut: paymentPayableAmonut == freezed
          ? _value.paymentPayableAmonut
          : paymentPayableAmonut // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentTransactionChargesFailureOrSuccessOption:
          paymentTransactionChargesFailureOrSuccessOption == freezed
              ? _value.paymentTransactionChargesFailureOrSuccessOption
              : paymentTransactionChargesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<PaymentFailure, List<TransactionCharge>>>,
      generateOrderIdFailureORSuccessOption:
          generateOrderIdFailureORSuccessOption == freezed
              ? _value.generateOrderIdFailureORSuccessOption
              : generateOrderIdFailureORSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<PaymentFailure, OrderResponse>>,
      startPaymentFailureOrSuccessOption: startPaymentFailureOrSuccessOption ==
              freezed
          ? _value.startPaymentFailureOrSuccessOption
          : startPaymentFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentFailure, String>>,
      logPaymentDetailsFailureOrSuccess: logPaymentDetailsFailureOrSuccess ==
              freezed
          ? _value.logPaymentDetailsFailureOrSuccess
          : logPaymentDetailsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentFailure, String>>,
      logPaymentStatusFailureOrSuccess: logPaymentStatusFailureOrSuccess ==
              freezed
          ? _value.logPaymentStatusFailureOrSuccess
          : logPaymentStatusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentFailure, String>>,
    ));
  }

  @override
  $OrderResponseCopyWith<$Res>? get orderResponse {
    if (_value.orderResponse == null) {
      return null;
    }

    return $OrderResponseCopyWith<$Res>(_value.orderResponse!, (value) {
      return _then(_value.copyWith(orderResponse: value));
    });
  }
}

/// @nodoc
abstract class _$PaymentStateCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$PaymentStateCopyWith(
          _PaymentState value, $Res Function(_PaymentState) then) =
      __$PaymentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? generatedOrderKey,
      bool? isLoading,
      OrderResponse? orderResponse,
      List<TransactionCharge>? transactionCharges,
      String? paymentMode,
      int? paymentPayableAmonut,
      Option<Either<PaymentFailure, List<TransactionCharge>>>
          paymentTransactionChargesFailureOrSuccessOption,
      Option<Either<PaymentFailure, OrderResponse>>
          generateOrderIdFailureORSuccessOption,
      Option<Either<PaymentFailure, String>> startPaymentFailureOrSuccessOption,
      Option<Either<PaymentFailure, String>> logPaymentDetailsFailureOrSuccess,
      Option<Either<PaymentFailure, String>> logPaymentStatusFailureOrSuccess});

  @override
  $OrderResponseCopyWith<$Res>? get orderResponse;
}

/// @nodoc
class __$PaymentStateCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PaymentStateCopyWith<$Res> {
  __$PaymentStateCopyWithImpl(
      _PaymentState _value, $Res Function(_PaymentState) _then)
      : super(_value, (v) => _then(v as _PaymentState));

  @override
  _PaymentState get _value => super._value as _PaymentState;

  @override
  $Res call({
    Object? generatedOrderKey = freezed,
    Object? isLoading = freezed,
    Object? orderResponse = freezed,
    Object? transactionCharges = freezed,
    Object? paymentMode = freezed,
    Object? paymentPayableAmonut = freezed,
    Object? paymentTransactionChargesFailureOrSuccessOption = freezed,
    Object? generateOrderIdFailureORSuccessOption = freezed,
    Object? startPaymentFailureOrSuccessOption = freezed,
    Object? logPaymentDetailsFailureOrSuccess = freezed,
    Object? logPaymentStatusFailureOrSuccess = freezed,
  }) {
    return _then(_PaymentState(
      generatedOrderKey: generatedOrderKey == freezed
          ? _value.generatedOrderKey
          : generatedOrderKey // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderResponse: orderResponse == freezed
          ? _value.orderResponse
          : orderResponse // ignore: cast_nullable_to_non_nullable
              as OrderResponse?,
      transactionCharges: transactionCharges == freezed
          ? _value.transactionCharges
          : transactionCharges // ignore: cast_nullable_to_non_nullable
              as List<TransactionCharge>?,
      paymentMode: paymentMode == freezed
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentPayableAmonut: paymentPayableAmonut == freezed
          ? _value.paymentPayableAmonut
          : paymentPayableAmonut // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentTransactionChargesFailureOrSuccessOption:
          paymentTransactionChargesFailureOrSuccessOption == freezed
              ? _value.paymentTransactionChargesFailureOrSuccessOption
              : paymentTransactionChargesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<PaymentFailure, List<TransactionCharge>>>,
      generateOrderIdFailureORSuccessOption:
          generateOrderIdFailureORSuccessOption == freezed
              ? _value.generateOrderIdFailureORSuccessOption
              : generateOrderIdFailureORSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<PaymentFailure, OrderResponse>>,
      startPaymentFailureOrSuccessOption: startPaymentFailureOrSuccessOption ==
              freezed
          ? _value.startPaymentFailureOrSuccessOption
          : startPaymentFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentFailure, String>>,
      logPaymentDetailsFailureOrSuccess: logPaymentDetailsFailureOrSuccess ==
              freezed
          ? _value.logPaymentDetailsFailureOrSuccess
          : logPaymentDetailsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentFailure, String>>,
      logPaymentStatusFailureOrSuccess: logPaymentStatusFailureOrSuccess ==
              freezed
          ? _value.logPaymentStatusFailureOrSuccess
          : logPaymentStatusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentFailure, String>>,
    ));
  }
}

/// @nodoc

class _$_PaymentState implements _PaymentState {
  const _$_PaymentState(
      {required this.generatedOrderKey,
      required this.isLoading,
      this.orderResponse,
      required this.transactionCharges,
      required this.paymentMode,
      required this.paymentPayableAmonut,
      required this.paymentTransactionChargesFailureOrSuccessOption,
      required this.generateOrderIdFailureORSuccessOption,
      required this.startPaymentFailureOrSuccessOption,
      required this.logPaymentDetailsFailureOrSuccess,
      required this.logPaymentStatusFailureOrSuccess});

  @override
  final String? generatedOrderKey;
  @override
  final bool? isLoading;
  @override
  final OrderResponse? orderResponse;
  @override
  final List<TransactionCharge>? transactionCharges;
  @override
  final String? paymentMode;
  @override
  final int? paymentPayableAmonut;
  @override
  final Option<Either<PaymentFailure, List<TransactionCharge>>>
      paymentTransactionChargesFailureOrSuccessOption;
  @override
  final Option<Either<PaymentFailure, OrderResponse>>
      generateOrderIdFailureORSuccessOption;
  @override
  final Option<Either<PaymentFailure, String>>
      startPaymentFailureOrSuccessOption;
  @override
  final Option<Either<PaymentFailure, String>>
      logPaymentDetailsFailureOrSuccess;
  @override
  final Option<Either<PaymentFailure, String>> logPaymentStatusFailureOrSuccess;

  @override
  String toString() {
    return 'PaymentState(generatedOrderKey: $generatedOrderKey, isLoading: $isLoading, orderResponse: $orderResponse, transactionCharges: $transactionCharges, paymentMode: $paymentMode, paymentPayableAmonut: $paymentPayableAmonut, paymentTransactionChargesFailureOrSuccessOption: $paymentTransactionChargesFailureOrSuccessOption, generateOrderIdFailureORSuccessOption: $generateOrderIdFailureORSuccessOption, startPaymentFailureOrSuccessOption: $startPaymentFailureOrSuccessOption, logPaymentDetailsFailureOrSuccess: $logPaymentDetailsFailureOrSuccess, logPaymentStatusFailureOrSuccess: $logPaymentStatusFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentState &&
            const DeepCollectionEquality()
                .equals(other.generatedOrderKey, generatedOrderKey) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.orderResponse, orderResponse) &&
            const DeepCollectionEquality()
                .equals(other.transactionCharges, transactionCharges) &&
            const DeepCollectionEquality()
                .equals(other.paymentMode, paymentMode) &&
            const DeepCollectionEquality()
                .equals(other.paymentPayableAmonut, paymentPayableAmonut) &&
            const DeepCollectionEquality().equals(
                other.paymentTransactionChargesFailureOrSuccessOption,
                paymentTransactionChargesFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(
                other.generateOrderIdFailureORSuccessOption,
                generateOrderIdFailureORSuccessOption) &&
            const DeepCollectionEquality().equals(
                other.startPaymentFailureOrSuccessOption,
                startPaymentFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(
                other.logPaymentDetailsFailureOrSuccess,
                logPaymentDetailsFailureOrSuccess) &&
            const DeepCollectionEquality().equals(
                other.logPaymentStatusFailureOrSuccess,
                logPaymentStatusFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(generatedOrderKey),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(orderResponse),
      const DeepCollectionEquality().hash(transactionCharges),
      const DeepCollectionEquality().hash(paymentMode),
      const DeepCollectionEquality().hash(paymentPayableAmonut),
      const DeepCollectionEquality()
          .hash(paymentTransactionChargesFailureOrSuccessOption),
      const DeepCollectionEquality()
          .hash(generateOrderIdFailureORSuccessOption),
      const DeepCollectionEquality().hash(startPaymentFailureOrSuccessOption),
      const DeepCollectionEquality().hash(logPaymentDetailsFailureOrSuccess),
      const DeepCollectionEquality().hash(logPaymentStatusFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$PaymentStateCopyWith<_PaymentState> get copyWith =>
      __$PaymentStateCopyWithImpl<_PaymentState>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {required String? generatedOrderKey,
      required bool? isLoading,
      OrderResponse? orderResponse,
      required List<TransactionCharge>? transactionCharges,
      required String? paymentMode,
      required int? paymentPayableAmonut,
      required Option<Either<PaymentFailure, List<TransactionCharge>>>
          paymentTransactionChargesFailureOrSuccessOption,
      required Option<Either<PaymentFailure, OrderResponse>>
          generateOrderIdFailureORSuccessOption,
      required Option<Either<PaymentFailure, String>>
          startPaymentFailureOrSuccessOption,
      required Option<Either<PaymentFailure, String>>
          logPaymentDetailsFailureOrSuccess,
      required Option<Either<PaymentFailure, String>>
          logPaymentStatusFailureOrSuccess}) = _$_PaymentState;

  @override
  String? get generatedOrderKey;
  @override
  bool? get isLoading;
  @override
  OrderResponse? get orderResponse;
  @override
  List<TransactionCharge>? get transactionCharges;
  @override
  String? get paymentMode;
  @override
  int? get paymentPayableAmonut;
  @override
  Option<Either<PaymentFailure, List<TransactionCharge>>>
      get paymentTransactionChargesFailureOrSuccessOption;
  @override
  Option<Either<PaymentFailure, OrderResponse>>
      get generateOrderIdFailureORSuccessOption;
  @override
  Option<Either<PaymentFailure, String>> get startPaymentFailureOrSuccessOption;
  @override
  Option<Either<PaymentFailure, String>> get logPaymentDetailsFailureOrSuccess;
  @override
  Option<Either<PaymentFailure, String>> get logPaymentStatusFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$PaymentStateCopyWith<_PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
