// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_serial_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchSerialModel _$BatchSerialModelFromJson(Map<String, dynamic> json) {
  return BatchSerialModel(
    json['BatchSerialNo'] as String?,
    json['BatchQty'] as int?,
    (json['Amount'] as num?)?.toDouble(),
    json['PurchaseDate'] as String?,
    json['SupplierName'] as String?,
  );
}

Map<String, dynamic> _$BatchSerialModelToJson(BatchSerialModel instance) =>
    <String, dynamic>{
      'BatchSerialNo': instance.BatchSerialNo,
      'BatchQty': instance.BatchQty,
      'Amount': instance.Amount,
      'PurchaseDate': instance.PurchaseDate,
      'SupplierName': instance.SupplierName,
    };
