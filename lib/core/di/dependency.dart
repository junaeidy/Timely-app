import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:timely_app/app/presentation/home/home_notifier.dart';
import 'package:timely_app/core/network/app_interceptor.dart';
import 'package:timely_app/app/presentation/login/login_notifier.dart';

final sl = GetIt.instance;

Future<void> initDependency() async {
  //dio
  Dio dio = Dio();
  dio.interceptors.add(AppInterceptor());
  dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      compact: true));
  sl.registerSingleton<Dio>(dio);

  //provider
  sl.registerFactoryParam<LoginNotifier, void, void>(
    (param1, param2) => LoginNotifier(),
  );

  sl.registerFactoryParam<HomeNotifier, void, void>(
    (param1, param2) => HomeNotifier(),
  );
}
