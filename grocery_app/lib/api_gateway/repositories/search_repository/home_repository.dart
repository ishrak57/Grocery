import '../../../features/homepage/data/dataSources/home_data_source.dart';
import '../../../features/homepage/data/models/get_home_model.dart';
import '../../../features/homepage/domain/entities/get_home_model_entity.dart';

abstract class HomeRepository {
  Future<HomeResultEntity?> getHomeData();
}

class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource _searchDataSource = HomeDataSourceImpl();

  HomeRepositoryImpl();

  @override
  Future<HomeResultEntity?> getHomeData() async {
    final HomeResultModel? _response = await _searchDataSource.getHomeData();

    /// converting models to entities
    HomeResultEntity? _searchEntity = _response!.toEntity();
    return _searchEntity;
  }
}
