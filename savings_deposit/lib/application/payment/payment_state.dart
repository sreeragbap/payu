part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    required String? generatedOrderKey,
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
        logPaymentStatusFailureOrSuccess,
  }) = _PaymentState;
  factory PaymentState.initial() {
    return PaymentState(
        generatedOrderKey: "",
        transactionCharges: [],
        paymentMode: "",
        paymentPayableAmonut: 0,
        isLoading: true,
        generateOrderIdFailureORSuccessOption: none(),
        paymentTransactionChargesFailureOrSuccessOption: none(),
        logPaymentDetailsFailureOrSuccess: none(),
        logPaymentStatusFailureOrSuccess: none(),
        startPaymentFailureOrSuccessOption: none());
  }
}
