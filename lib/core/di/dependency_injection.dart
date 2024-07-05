import 'package:dio/dio.dart';
import 'package:docdoc/core/api/api_service.dart';
import 'package:docdoc/core/api/dio_factory.dart';
import 'package:docdoc/features/login/data/repos/login_repo.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/sign_up/data/repo/signup_repo.dart';
import 'package:docdoc/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupDependencyInjection() async {
  // Registering the ApiService& Dio
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton(() => ApiService(dio));
  // Registering the LoginRepo
  getIt.registerLazySingleton(() => LoginRepo(getIt()));
  // Registering the LoginCubit
  getIt.registerFactory(() => LoginCubit(getIt()));
  // Registering the LoginRepo
  getIt.registerLazySingleton(() => SignupRepo(getIt()));
  // Registering the LoginCubit
  getIt.registerFactory(() => SignupCubit(getIt()));
}
