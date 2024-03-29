import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/database/api/api_consumer.dart';
import 'package:chef_app/core/database/api/dio_consumer.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/features/auth/data/repositry/auth_repo.dart';
import 'package:chef_app/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:chef_app/features/auth/presentation/cubits/send_code_cubit/cubit/send_code_cubit.dart';
import 'package:chef_app/features/home/presentation/cubits/cubit/home_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  sl.registerLazySingleton(
    () => CacheHelper(),
  );
  sl.registerLazySingleton(
    () => GlobalCubit(),
  );
  sl.registerLazySingleton(
    () => LoginCubit(
      sl(),
    ),
  );
  sl.registerLazySingleton(
    () => HomeCubit(),
  );
  sl.registerLazySingleton(
    () => SendCodeCubit(
      sl(),
    ),
  );
  sl.registerLazySingleton(
    () => AuthRepo(),
  );
  sl.registerLazySingleton<ApiConsumer>(
    () => DioConsumer(
      sl(),
    ),
  );
  sl.registerLazySingleton(
    () => Dio(),
  );
}
