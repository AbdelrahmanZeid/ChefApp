
import 'package:chef_app/features/auth/presentation/views/change_lang_view.dart';
import 'package:chef_app/features/auth/presentation/views/login_view.dart';
import 'package:chef_app/features/auth/presentation/views/reset_password_view.dart';
import 'package:chef_app/features/auth/presentation/views/send_code_view.dart';
import 'package:chef_app/features/auth/presentation/views/splash_view.dart';
import 'package:chef_app/features/home/presentation/views/home_view.dart';
import 'package:chef_app/features/menu/presentation/views/add_meal_view.dart';
import 'package:chef_app/features/menu/presentation/views/menu_view.dart';
import 'package:chef_app/features/profile/presentation/views/chaneg_password_view.dart';
import 'package:chef_app/features/profile/presentation/views/profile_view.dart';
import 'package:chef_app/features/profile/presentation/views/setting_view.dart';
import 'package:chef_app/features/profile/presentation/views/update_profile_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.initialRoute,
      builder: (context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path:AppRoutes.chanegLanguage,
      builder: (context, GoRouterState state) {
        return const ChangeLanguageView();
      },
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, GoRouterState state) {
        return const LoginView();
      },
    ),
    GoRoute(
      path: AppRoutes.sendCode,
      builder: (context, GoRouterState state) {
        return const SendCodeView();
      },
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: AppRoutes.resetpassword,
      builder: (context, GoRouterState state) {
        return const ResetPasswordView();
      },
    ),
    GoRoute(
      path: AppRoutes.addMeal,
      builder: (context, GoRouterState state) {
        return const AddMealView();
      },
    ),
    GoRoute(
      path: AppRoutes.menu,
      builder: (context, GoRouterState state) {
        return const MenuView();
      },
    ),
    GoRoute(
      path: AppRoutes.changePassword,
      builder: (context, GoRouterState state) {
        return const ChangePasswordView();
      },
    ),
    GoRoute(
      path: AppRoutes.profile,
      builder: (context, GoRouterState state) {
        return const ProfileView();
      },
    ),
    GoRoute(
      path: AppRoutes.updateProfile,
      builder: (context, GoRouterState state) {
        return const UpdateProfileView();
      },
    ),
    GoRoute(
      path: AppRoutes.setting,
      builder: (context, GoRouterState state) {
        return const SettingView();
      },
    ),
    
  ],
);

class AppRoutes{
  static const String initialRoute="/";
  static const String home="/home";
  static const String chanegLanguage= '/changelanguage';
  static const String login= '/login';
  static const String setting= '/setting';
  static const String updateProfile= '/updateprofile';
  static const String profile= '/profile';
  static const String changePassword= '/chanegpassword';
  static const String menu= '/menu';
  static const String addMeal= '/addmeal';
  static const String resetpassword= '/resetpassword';
  static const String sendCode= '/sendcode';
}
