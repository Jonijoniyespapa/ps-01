import 'package:dio/dio.dart';

import '../model/api_model.dart';

class ApiService {
  final Dio _dio = Dio();
  Future<ApiModel> fetchApiData() async {
    final response = await _dio.get(
        'https://faas-sgp1-18bc02ac.doserverless.co/api/v1/web/fn-1d8e7178-75b5-42fb-bdc9-ec19fd6ad1f9/default/App');
    return ApiModel.fromJson(response.data);
  }
}
