import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
class OrderResponse with _$OrderResponse {
  const factory OrderResponse({
    required String id,
    required String entity,
    required int amount,
    @JsonKey(name: "amount_paid") required int amountPaid,
    required String currency,
    required String receipt,
    @JsonKey(name: "offer_id") required dynamic offerId,
    required String? status,
    required int? attempts,
    required List? notes,
    @JsonKey(name: "created_at") required int? createdAt,
  }) = _OrderResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}

@freezed
class TransactionCharge with _$TransactionCharge {
  const factory TransactionCharge(
      {required int? paymentModeId,
      required int? payModeSubId,
      required int? minAmount,
      required int? maxAmount,
      required double? chargeRate,
      required int? chargeAmount}) = _TransactionCharge;

  factory TransactionCharge.fromJson(Map<String, dynamic> json) =>
      _$TransactionChargeFromJson(json);
}
