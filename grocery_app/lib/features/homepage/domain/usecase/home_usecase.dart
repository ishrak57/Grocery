import '../../../../api_gateway/repositories/search_repository/home_repository.dart';
import '../entities/get_home_model_entity.dart';

class HomeUseCase {
  final HomeRepository homeRepository;
  HomeUseCase({required this.homeRepository});

  Future<HomeResultEntity?> getHomeData() async {
    return await homeRepository.getHomeData();
  }
}
