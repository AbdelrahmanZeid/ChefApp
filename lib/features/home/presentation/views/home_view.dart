import 'package:chef_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
    );
  }
}
