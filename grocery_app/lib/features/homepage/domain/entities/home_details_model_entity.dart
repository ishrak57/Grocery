// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../data/models/home_details_model.dart';
import 'batch_serail_details_entity.dart';

class HomeDetailsEntity {
  int? Id;
  String? Type;
  String? ParentCode;
  String? Name;
  String? Code;
  double? Price;
  double? CostPrice;
  String? UnitName;
  String? CategoryName;
  String? BrandName;
  String? ModelName;
  String? VariantName;
  String? SizeName;
  String? ColorName;
  double? OldPrice;
  String? ImagePath;
  String? ProductBarcode;
  String? Description;
  List? ChildList;
  List<BatchSerialEntity>? BatchSerial;
  List? WarehouseList;
  double? CurrentStock;
  String? CreateDate;
  String? UpdateDate;

  HomeDetailsEntity(
    this.Id,
    this.Type,
    this.ParentCode,
    this.Name,
    this.Code,
    this.Price,
    this.CostPrice,
    this.UnitName,
    this.CategoryName,
    this.BrandName,
    this.ModelName,
    this.VariantName,
    this.SizeName,
    this.ColorName,
    this.OldPrice,
    this.ImagePath,
    this.ProductBarcode,
    this.Description,
    this.ChildList,
    this.BatchSerial,
    this.WarehouseList,
    this.CurrentStock,
    this.CreateDate,
    this.UpdateDate,
  );
}
