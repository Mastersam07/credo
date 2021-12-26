import 'package:credo_flutter/src/services/api_service.dart';
import 'package:credo_flutter/src/services/error_catch.dart';
import 'package:credo_flutter/src/shared/base_urls.dart';
import 'package:dio/dio.dart';

class CredoApiService with ErrorCatchMixin implements CredoApiContract {
  static final _options = BaseOptions(
    baseUrl: CredoBaseUrl.baseUrl,
  );
  final _dio = Dio(_options);

  @override
  Future postRequest(
      {String endpoint,
      Map<String, dynamic> headers,
      Map<String, dynamic> body}) async {
    catchAsyncError(() async {
      final response = await _dio.post(
        endpoint,
        options: Options(headers: headers),
        data: body,
      );
      return response;
    });
  }

  @override
  Future getRequest({String endpoint, Map<String, dynamic> headers}) async {
    return catchAsyncError(() async {
      final response = await _dio.get(
        endpoint,
        options: Options(headers: headers, contentType: 'application/json'),
      );
      return response;
    });
  }
}
