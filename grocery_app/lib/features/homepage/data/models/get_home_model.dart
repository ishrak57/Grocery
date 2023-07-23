import 'package:grocery_app/features/homepage/domain/entities/home_details_model_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/get_home_model_entity.dart';
import 'home_details_model.dart';

part 'get_home_model.g.dart';

@JsonSerializable()
class HomeResultModel {
  int? Success;
  bool? error;
  List<HomeDetailsModel>? ProductList;

  HomeResultModel(
    this.Success,
    this.error,
    this.ProductList,
  );

  factory HomeResultModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResultModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HomeResultModelToJson(this);

  HomeResultEntity toEntity() {
    List<HomeDetailsEntity>? searchEntity = [];

    for (var i = 0; i < ProductList!.length; i++) {
      searchEntity.add(ProductList![i].toEntity());
    }
    return HomeResultEntity(
      this.Success,
      this.error,
      searchEntity,
    );
  }
}
