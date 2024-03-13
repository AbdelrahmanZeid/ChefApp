import 'package:chef_app/core/bloc/cubit/global_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit()
      : super(
          GlobalInitial(),
        );

  bool isArabic = false;
  String localCode = "en";

  void changeLanguage() {
    isArabic=!isArabic;
    localCode = isArabic ? "en" : "ar";
    emit(
      ChangeLanuageState(),
    );
  }
}
