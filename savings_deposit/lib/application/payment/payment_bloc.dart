import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/calendar/success/success.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/payment/failure/payment_failure.dart';
import 'package:savings_deposit/domain/payment/irepo/i_payment_repo.dart';
import 'package:savings_deposit/domain/payment/model/payment_model.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

@injectable
@prod
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  IPaymentRepo paymentRepo;
  PaymentBloc(this.paymentRepo) : super(PaymentState.initial()) {
    // on<_GenerateOrdreKey>((event, emit) {
    //   String _generatedOrderKey = paymentRepo.generateOrderKey();
    //   emit(state.copyWith(
    //       generatedOrderKey: _generatedOrderKey,
    //       logPaymentDetailsFailureOrSuccess: none(),
    //       logPaymentStatusFailureOrSuccess: none(),
    //       generateOrderIdFailureORSuccessOption: none(),
    //       startPaymentFailureOrSuccessOption: none()));
    // });
    // on<_GenerateOrderId>((event, emit) async {
    //   emit(state.copyWith(
    //       isLoading: true,
    //       logPaymentDetailsFailureOrSuccess: none(),
    //       logPaymentStatusFailureOrSuccess: none(),
    //       generateOrderIdFailureORSuccessOption: none(),
    //       startPaymentFailureOrSuccessOption: none()));
    //   final Either<PaymentFailure, OrderResponse> failureOrSuccess =
    //       await paymentRepo.generateOrderID(
    //           amount: event.amount, generatedKey: state.generatedOrderKey!);

    //   emit(failureOrSuccess.fold((failure) {
    //     return state.copyWith(
    //         isLoading: false,
    //         orderResponse: null,
    //         logPaymentDetailsFailureOrSuccess: none(),
    //         logPaymentStatusFailureOrSuccess: none(),
    //         generateOrderIdFailureORSuccessOption: Some(
    //           Left(failure),
    //         ),
    //         startPaymentFailureOrSuccessOption: none());
    //   }, (success) {
    //     return state.copyWith(
    //         isLoading: false,
    //         logPaymentDetailsFailureOrSuccess: none(),
    //         logPaymentStatusFailureOrSuccess: none(),
    //         generateOrderIdFailureORSuccessOption: Some(Right(success)),
    //         startPaymentFailureOrSuccessOption: none(),
    //         orderResponse: success);
    //   }));
    // });

    // on<_StartPayment>((event, emit) async {
    //   emit(state.copyWith(
    //     isLoading: true,
    //     startPaymentFailureOrSuccessOption: none(),
    //     logPaymentDetailsFailureOrSuccess: none(),
    //     logPaymentStatusFailureOrSuccess: none(),
    //     generateOrderIdFailureORSuccessOption: none(),
    //   ));
    //   final Either<PaymentFailure, String> failureOSuccess =
    //       await paymentRepo.startPayment(
    //           customerName: event.customerName,
    //           amount: event.amount,
    //           orderName: event.orderName,
    //           phoneNumber: event.phoneNumber,
    //           email: event.email,
    //           orderId: event.orderId);

    //   emit(failureOSuccess.fold((failure) {
    //     return state.copyWith(
    //         isLoading: false,
    //         logPaymentDetailsFailureOrSuccess: none(),
    //         logPaymentStatusFailureOrSuccess: none(),
    //         startPaymentFailureOrSuccessOption: Some(Left(failure)),
    //         generateOrderIdFailureORSuccessOption: none());
    //   }, (success) {
    //     return state.copyWith(
    //         isLoading: false,
    //         logPaymentDetailsFailureOrSuccess: none(),
    //         logPaymentStatusFailureOrSuccess: none(),
    //         startPaymentFailureOrSuccessOption: Some(Right(success)),
    //         generateOrderIdFailureORSuccessOption: none());
    //   }));
    // });

    on<_fetchPaymentTransactionCharges>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        logPaymentDetailsFailureOrSuccess: none(),
        logPaymentStatusFailureOrSuccess: none(),
        paymentTransactionChargesFailureOrSuccessOption: none(),
      ));
      final Either<PaymentFailure, List<TransactionCharge>> failureOSuccess =
          await paymentRepo.getPaymentTransactionCharges();
      emit(failureOSuccess.fold((failure) {
        return state.copyWith(
          isLoading: false,
          logPaymentDetailsFailureOrSuccess: none(),
          logPaymentStatusFailureOrSuccess: none(),
          paymentTransactionChargesFailureOrSuccessOption: Some(Left(failure)),
        );
      }, (success) {
        return state.copyWith(
          isLoading: false,
          logPaymentDetailsFailureOrSuccess: none(),
          logPaymentStatusFailureOrSuccess: none(),
          paymentTransactionChargesFailureOrSuccessOption: Some(Right(success)),
          transactionCharges: success,
        );
      }));
    });

    on<_SelectPaymentMode>((event, emit) {
      emit(state.copyWith(
        isLoading: false,
        paymentMode: event.value,
        logPaymentDetailsFailureOrSuccess: none(),
        logPaymentStatusFailureOrSuccess: none(),
        paymentTransactionChargesFailureOrSuccessOption: none(),
      ));
    });

    on<_CalculatePaymentPayableAmount>((event, emit) {
      double amount = double.parse(event.amount);
      double payableAmount = 0.0;
      if (state.paymentMode == "DC") {
        if (amount > state.transactionCharges![0].maxAmount!) {
          double rate = amount * state.transactionCharges![1].chargeRate! / 100;
          payableAmount = amount + rate;
        } else {
          payableAmount = amount;
        }
      }
      if (state.paymentMode == "NB") {
        payableAmount = amount + state.transactionCharges![2].chargeAmount!;
      }
      if (state.paymentMode == "UPI") {
        payableAmount = amount;
      }
      emit(
        state.copyWith(
          isLoading: false,
          paymentPayableAmonut: payableAmount.round(),
          logPaymentDetailsFailureOrSuccess: none(),
          logPaymentStatusFailureOrSuccess: none(),
          paymentTransactionChargesFailureOrSuccessOption: none(),
        ),
      );
    });

    on<_PaymentCancelled>((event, emit) {
      emit(state.copyWith(
          isLoading: false,
          logPaymentDetailsFailureOrSuccess: none(),
          logPaymentStatusFailureOrSuccess: none(),
          generateOrderIdFailureORSuccessOption: some(
            left(const PaymentFailure.clientFailure()),
          ),
          startPaymentFailureOrSuccessOption: none()));
    });
    on<_ExternalError>((event, emit) {
      emit(state.copyWith(
        isLoading: false,
        logPaymentDetailsFailureOrSuccess: none(),
        logPaymentStatusFailureOrSuccess: none(),
        startPaymentFailureOrSuccessOption: none(),
        generateOrderIdFailureORSuccessOption: some(
          left(const PaymentFailure.clientFailure()),
        ),
      ));
    });
    on<_LogPaymentDetails>((event, emit) async {
      final Either<PaymentFailure, String> failureOrSuccess =
          await paymentRepo.logPaymentDetails(
        firmId: event.firmId,
        branchId: event.branchId,
        moduleId: event.moduleId,
        refId: event.refId,
        reqId: event.reqId,
        docId: event.docId,
        customerId: event.customerId,
        transactioAmount: event.transactioAmount,
        refAmount: event.refAmount,
        gateWayMode: event.gateWayMode,
        paymentMode: event.paymentMode,
        applicationFlag: event.applicationFlag,
        prevCharge: event.prevCharge,
        serviceCharge: event.serviceCharge,
        agentCode: event.agentCode,
        customerName: event.customerName,
      );
      emit(failureOrSuccess.fold((failure) {
        return state.copyWith(
          startPaymentFailureOrSuccessOption: none(),
          logPaymentDetailsFailureOrSuccess: none(),
          logPaymentStatusFailureOrSuccess: none(),
          generateOrderIdFailureORSuccessOption: none(),
        );
      }, (success) {
        return state.copyWith(
          startPaymentFailureOrSuccessOption: none(),
          logPaymentDetailsFailureOrSuccess: Some(Right(success)),
          logPaymentStatusFailureOrSuccess: none(),
          generateOrderIdFailureORSuccessOption: none(),
        );
      }));
    });

    on<_LogPaymentStatus>((event, emit) async {
      final Either<PaymentFailure, String> failureOrSuccess =
          await paymentRepo.logPaymentStatus(
              refId: event.refId,
              reqId: event.reqId,
              custId: event.custId,
              docId: event.docId,
              transactionAmount: event.transactionAmount,
              gatewayTransId: event.gatewayTransId,
              confirmString: event.confirmString,
              errorString: event.errorString,
              resString: event.resString,
              resTransId: event.resTransId,
              refAmount: event.refAmount,
              gatewayMode: event.gatewayMode,
              paymentMode: event.paymentMode,
              applicationFlag: event.applicationFlag,
              prevCharge: event.prevCharge,
              serCharge: event.serCharge,
              agentMode: event.agentMode);
      emit(failureOrSuccess.fold((failure) {
        return state.copyWith(
          startPaymentFailureOrSuccessOption: none(),
          logPaymentDetailsFailureOrSuccess: none(),
          logPaymentStatusFailureOrSuccess: none(),
          generateOrderIdFailureORSuccessOption: none(),
        );
      }, (success) {
        return state.copyWith(
          startPaymentFailureOrSuccessOption: none(),
          logPaymentDetailsFailureOrSuccess: none(),
          logPaymentStatusFailureOrSuccess: Some(Right(success)),
          generateOrderIdFailureORSuccessOption: none(),
        );
      }));
    });
  }
}
