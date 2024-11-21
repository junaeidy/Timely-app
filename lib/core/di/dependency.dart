import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:timely_app/core/network/app_interceptor.dart';

final sl = GetIt.instance;

Future<void> initDependency() async {
  Dio dio = Dio();
  dio.interceptors.add(AppInterceptor());
  dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      compact: true));
  sl.registerSingleton<Dio>(dio);
}