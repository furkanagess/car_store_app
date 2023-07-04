import 'package:car_store_app/product/constants/app_colors.dart';
import 'package:car_store_app/product/extension/context_extension.dart';
import 'package:car_store_app/product/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: context.paddingNormal,
          child: Column(
            children: [
              SizedBox(height: context.dynamicHeight(0.05)),
              CircleAvatar(
                backgroundColor: AppColors.orange,
                radius: 45,
                child: Text(
                  'C',
                  style: context.textTheme.headlineLarge?.copyWith(
                    color: AppColors.background,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: context.dynamicHeight(0.07)),
              Text(
                'Login',
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: context.dynamicHeight(0.02)),
              Text(
                'Welcome to CarStore',
                style: context.textTheme.bodyLarge,
              ),
              SizedBox(height: context.dynamicHeight(0.05)),
              CustomTextField(hintText: 'Username', icon: Icons.person_outline),
              SizedBox(height: context.dynamicHeight(0.02)),
              CustomTextField(hintText: 'Password', icon: Icons.lock_outline),
              SizedBox(height: context.dynamicHeight(0.03)),
              InkWell(
                onTap: () {},
                child: Text(
                  'Forgot Password?',
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: context.dynamicHeight(0.03)),
              Container(
                height: context.dynamicHeight(0.08),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.orange,
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: AppColors.background,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: context.dynamicHeight(0.03)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  SizedBox(width: context.dynamicHeight(0.01)),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Sign Up',
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: AppColors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
