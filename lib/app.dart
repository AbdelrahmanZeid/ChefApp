import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/bloc/cubit/global_state.dart';
import 'package:chef_app/core/utils/app_function.dart';
import 'package:chef_app/core/utils/app_routes.dart';
import 'package:chef_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChefApp extends StatelessWidget {
  const ChefApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        375,
        812,
      ),
      builder: (
        _,
        child,
      ) {
        return BlocBuilder<GlobalCubit, GlobalState>(
          builder: (context, state) {
            return MaterialApp.router(
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale(
                  'ar',
                  "EG",
                ),
                Locale(
                  'en',
                  "US",
                ),
              ],
              locale: Locale(
                context.read<GlobalCubit>().localCode,
              ),
              debugShowCheckedModeBanner: false,
              routerConfig: router,
              theme: getAppTheme(),
            );
          },
        );
      },
    );
  }
}
