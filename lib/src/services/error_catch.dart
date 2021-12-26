import 'dart:io';

import 'package:dio/dio.dart';

mixin ErrorCatchMixin {
  Future catchAsyncError<T>(Future Function() callback) async {
    try {
      return await callback();
    } on SocketException {
    } on DioError {
    } catch (e) {}
  }
}
