import 'package:bloc/bloc.dart';
import 'package:chef_app/features/home/presentation/cubits/cubit/home_state.dart';
import 'package:chef_app/features/menu/presentation/views/menu_view.dart';
import 'package:chef_app/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<Widget> viewsList = [
    const MenuView(),
    const ProfileView(),
  ];
  int currentIndex = 0;
  void changeIndex(
    index,
  ) {
    currentIndex = index;
    emit(
      ChangeIndexSuccessState(),
    );
  }
}
