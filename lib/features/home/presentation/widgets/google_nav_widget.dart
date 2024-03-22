
import 'package:chef_app/core/utils/app_color.dart';
import 'package:chef_app/features/home/presentation/cubits/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleNavWidget extends StatelessWidget {
  const GoogleNavWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
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
      tabBackgroundColor: Colors.black,
      selectedIndex: context.read<HomeCubit>().currentIndex,
      onTabChange: (value) {
        context.read<HomeCubit>().changeIndex(
              value,
            );
      },
    );
  }
}
