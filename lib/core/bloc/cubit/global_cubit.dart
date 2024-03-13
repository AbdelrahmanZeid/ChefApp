import 'package:chef_app/core/bloc/cubit/global_state.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/core/services/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit()
      : super(
          GlobalInitial(),
        );

  // bool isArabic = false;
  String localCode = "en";

  void changeLanguage(String langCode) async {
    // isArabic=!isArabic;
    localCode = langCode;
    await sl<CacheHelper>().cacheLanguage(
      langCode,
    );
    emit(
      ChangeLanuageState(),
    );
  }

  void getCachedLang() {
    final cachedLang = sl<CacheHelper>().getCachedLanguage();
    localCode = cachedLang;
    emit(
      ChangeLanuageState(),
    );
  }
}
