import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/database/api/api_consumer.dart';
import 'package:chef_app/core/database/api/dio_consumer.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  sl.registerLazySingleton(
    () => CacheHelper(),
  );
  sl.registerLazySingleton(
    () => GlobalCubit(),
  );
  sl.registerLazySingleton<ApiConsumer>(
    () => DioConsumer(
      sl(),
    ),
  );
}
