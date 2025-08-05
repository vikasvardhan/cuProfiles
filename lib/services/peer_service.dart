import 'package:cuprofiles/constants/urls.dart';
import 'package:dio/dio.dart';

class PeerService {
  final Dio _dio = Dio(
    BaseOptions(baseUrl: ApiUrls.baseUrl, responseType: ResponseType.json),
  );

  fetchData() async {
    var response = await _dio.get('consumer/service');
    return response.data;
  }
}
