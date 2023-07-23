import '../../data/models/get_home_model.dart';
import 'home_details_model_entity.dart';

class HomeResultEntity {
  int? Success;
  bool? error;
  List<HomeDetailsEntity>? ProductList;

  HomeResultEntity(
    this.Success,
    this.error,
    this.ProductList,
  );
}
