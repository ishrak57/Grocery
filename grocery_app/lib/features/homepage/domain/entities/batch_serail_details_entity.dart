// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../data/models/batch_serial_details.dart';

class BatchSerialEntity {
  String? BatchSerialNo;
  int? BatchQty;
  double? Amount;
  String? PurchaseDate;
  String? SupplierName;
  BatchSerialEntity(
    this.BatchSerialNo,
    this.BatchQty,
    this.Amount,
    this.PurchaseDate,
    this.SupplierName,
  );

  BatchSerialModel toModel() => BatchSerialModel(
        this.BatchSerialNo,
        this.BatchQty,
        this.Amount,
        this.PurchaseDate,
        this.SupplierName,
      );
}
