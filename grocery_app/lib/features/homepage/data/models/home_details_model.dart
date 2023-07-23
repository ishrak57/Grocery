// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:grocery_app/features/homepage/data/models/batch_serial_details.dart';
import 'package:grocery_app/features/homepage/domain/entities/batch_serail_details_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/home_details_model_entity.dart';

part 'home_details_model.g.dart';

@JsonSerializable()
class HomeDetailsModel {
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
  List<BatchSerialModel>? BatchSerial;
  List? WarehouseList;
  double? CurrentStock;
  String? CreateDate;
  String? UpdateDate;

  HomeDetailsModel(
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

  factory HomeDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDetailsModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HomeDetailsModelToJson(this);

  HomeDetailsEntity toEntity() {
    List<BatchSerialEntity>? searchEntity = [];

    for (var i = 0; i < BatchSerial!.length; i++) {
      searchEntity.add(BatchSerial![i].toEntity());
    }
    return HomeDetailsEntity(
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
      searchEntity,
      this.WarehouseList,
      this.CurrentStock,
      this.CreateDate,
      this.UpdateDate,
    );
  }
}
