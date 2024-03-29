import 'package:chef_app/app.dart';
import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/core/services/service_locator.dart';
import 'package:chef_app/features/home/presentation/cubits/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLocator();
  await sl<CacheHelper>().init();

  runApp(
    MultiBlocProvider(
      providers: [ 
        BlocProvider(
          create: (
            context,
          ) =>
              sl<GlobalCubit>()..getCachedLang(),
        ),
        BlocProvider(
          create: (
            context,
          ) =>
              sl<HomeCubit>(),
        ),
      ],
      child: const ChefApp(),
    ),
  );
}
