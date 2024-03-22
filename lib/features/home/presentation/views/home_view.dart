 import 'package:chef_app/features/home/presentation/cubits/cubit/home_cubit.dart';
import 'package:chef_app/features/home/presentation/cubits/cubit/home_state.dart';
import 'package:chef_app/features/home/presentation/widgets/google_nav_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
  
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
          backgroundColor: Colors.white,
          body: context
              .read<HomeCubit>()
              .viewsList[context.read<HomeCubit>().currentIndex],
          bottomNavigationBar: const GoogleNavWidget(),
        );
      },
    );
  }
}
