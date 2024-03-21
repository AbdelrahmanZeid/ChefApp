import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/features/home/presentation/cubits/cubit/home_cubit.dart';
import 'package:chef_app/features/home/presentation/cubits/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: context
              .read<HomeCubit>()
              .viewsList[context.read<HomeCubit>().currentIndex],
          bottomNavigationBar: GNav(
            tabs: const [
              GButton(
                icon: Icons.menu,
              ),
              GButton(
                icon: Icons.person,
              ),
            ],
            activeColor: AppColors.primary,
            gap: 8.w,
            selectedIndex: context.read<HomeCubit>().currentIndex,
            onTabChange: (value) {
              context.read<HomeCubit>().changeIndex(
                    value,
                  );
            },
          ),
        );
      },
    );
  }
}
