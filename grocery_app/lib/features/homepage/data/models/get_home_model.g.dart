// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResultModel _$HomeResultModelFromJson(Map<String, dynamic> json) {
  return HomeResultModel(
    json['Success'] as int?,
    json['error'] as bool?,
    (json['ProductList'] as List<dynamic>?)
        ?.map((e) => HomeDetailsModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$HomeResultModelToJson(HomeResultModel instance) =>
    <String, dynamic>{
      'Success': instance.Success,
      'error': instance.error,
      'ProductList': instance.ProductList,
    };
