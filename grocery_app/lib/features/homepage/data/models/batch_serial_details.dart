// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/batch_serail_details_entity.dart';

part 'batch_serial_details.g.dart';

@JsonSerializable()
class BatchSerialModel {
  String? BatchSerialNo;
  int? BatchQty;
  double? Amount;
  String? PurchaseDate;
  String? SupplierName;
  BatchSerialModel(
    this.BatchSerialNo,
    this.BatchQty,
    this.Amount,
    this.PurchaseDate,
    this.SupplierName,
  );

  factory BatchSerialModel.fromJson(Map<String, dynamic> json) =>
      _$BatchSerialModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BatchSerialModelToJson(this);

  BatchSerialEntity toEntity() => BatchSerialEntity(
        this.BatchSerialNo,
        this.BatchQty,
        this.Amount,
        this.PurchaseDate,
        this.SupplierName,
      );
}
