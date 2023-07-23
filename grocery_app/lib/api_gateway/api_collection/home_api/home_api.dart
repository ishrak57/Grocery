import '../../../features/homepage/data/models/get_home_model.dart';

class HomeApi {
  HomeResultModel listMapResponse(Map<String, dynamic>? responseJson) {
    final HomeResultModel _singleResult =
        HomeResultModel.fromJson(responseJson!);

    return _singleResult;
  }
}
