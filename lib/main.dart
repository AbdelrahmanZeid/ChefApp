import 'package:chef_app/app.dart';
import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
   initServiceLocator();
  runApp(
    BlocProvider(
      create: (context) => sl<GlobalCubit>(),
      child: const ChefApp(),
    ),
  );
}
