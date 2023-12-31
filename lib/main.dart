import 'package:car_store_app/feature/view/auth/login_view.dart';
import 'package:car_store_app/feature/view/auth/signup_view.dart';
import 'package:car_store_app/feature/view/home/home_view.dart';
import 'package:car_store_app/product/constants/app_strings.dart';
import 'package:car_store_app/product/constants/navigation_constants.dart';
import 'package:car_store_app/product/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      routes: {
        NavigationConstants.SIGNUP: (context) => const SignupView(),
        NavigationConstants.LOGIN: (context) => const LoginView(),
        NavigationConstants.HOME: (context) => const HomeView(),
      },
      home: const LoginView(),
      theme: AppTheme().theme,
    );
  }
}
