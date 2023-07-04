import 'package:car_store_app/feature/view/auth/login_view.dart';
import 'package:car_store_app/product/constants/app_colors.dart';
import 'package:car_store_app/product/constants/app_strings.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      home: const LoginView(),
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: AppColors.orange,
            ),
      ),
    );
  }
}
