// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDetailsModel _$HomeDetailsModelFromJson(Map<String, dynamic> json) {
  return HomeDetailsModel(
    json['Id'] as int?,
    json['Type'] as String?,
    json['ParentCode'] as String?,
    json['Name'] as String?,
    json['Code'] as String?,
    (json['Price'] as num?)?.toDouble(),
    (json['CostPrice'] as num?)?.toDouble(),
    json['UnitName'] as String?,
    json['CategoryName'] as String?,
    json['BrandName'] as String?,
    json['ModelName'] as String?,
    json['VariantName'] as String?,
    json['SizeName'] as String?,
    json['ColorName'] as String?,
    (json['OldPrice'] as num?)?.toDouble(),
    json['ImagePath'] as String?,
    json['ProductBarcode'] as String?,
    json['Description'] as String?,
    json['ChildList'] as List<dynamic>?,
    (json['BatchSerial'] as List<dynamic>?)
        ?.map((e) => BatchSerialModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['WarehouseList'] as List<dynamic>?,
    (json['CurrentStock'] as num?)?.toDouble(),
    json['CreateDate'] as String?,
    json['UpdateDate'] as String?,
  );
}

Map<String, dynamic> _$HomeDetailsModelToJson(HomeDetailsModel instance) =>
    <String, dynamic>{
      'Id': instance.Id,
      'Type': instance.Type,
      'ParentCode': instance.ParentCode,
      'Name': instance.Name,
      'Code': instance.Code,
      'Price': instance.Price,
      'CostPrice': instance.CostPrice,
      'UnitName': instance.UnitName,
      'CategoryName': instance.CategoryName,
      'BrandName': instance.BrandName,
      'ModelName': instance.ModelName,
      'VariantName': instance.VariantName,
      'SizeName': instance.SizeName,
      'ColorName': instance.ColorName,
      'OldPrice': instance.OldPrice,
      'ImagePath': instance.ImagePath,
      'ProductBarcode': instance.ProductBarcode,
      'Description': instance.Description,
      'ChildList': instance.ChildList,
      'BatchSerial': instance.BatchSerial,
      'WarehouseList': instance.WarehouseList,
      'CurrentStock': instance.CurrentStock,
      'CreateDate': instance.CreateDate,
      'UpdateDate': instance.UpdateDate,
    };
