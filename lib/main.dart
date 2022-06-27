import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubit/app_cubit_logics.dart';
import 'package:travelapp/cubit/app_cubits.dart';
import 'package:travelapp/pages/detail_page.dart';
import 'package:travelapp/pages/nav_pages/main_page.dart';
import 'package:travelapp/pages/welcome_page.dart';
import 'package:travelapp/services/data_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<AppCubits>(
        create: (context)=>AppCubits(
          data: DataServices(),
        ),
        child: AppCubitLogics(),
      )
    );
  }
}