import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../../../api_gateway/api_collection/home_api/home_api.dart';
import '../models/get_home_model.dart';

abstract class HomeDataSource {
  Future<HomeResultModel?> getHomeData();
}

class HomeDataSourceImpl implements HomeDataSource {
  final HomeApi _getSearchDataApi = HomeApi();

  HomeDataSourceImpl();

  @override
  Future<HomeResultModel?> getHomeData() async {
    /// url input
    String url = 'https://pqstec.com/invoiceapps/Values/GetProductList';

    /// http request
    final response = await http.get(
      Uri.parse(url),
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer ' +
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiI0MTMiLCJDdXJyZW50Q29tSWQiOiIxIiwibmJmIjoxNjg5NTc5MDA5LCJleHAiOjE2OTAxODM4MDksImlhdCI6MTY4OTU3OTAwOX0.vYPjhRqOiY_ZsSv8Sa9kDqle5zSgL0ieVYUvgQyleKs',
      },
    );

    /// json data to List of Maps conversion
    final Map<String, dynamic> body =
        Map<String, dynamic>.from(json.decode(response.body));

    /// map to model conversion
    HomeResultModel _response = _getSearchDataApi.listMapResponse(body);
    return _response;
  }
}
