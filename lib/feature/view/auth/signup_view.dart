import 'package:car_store_app/product/constants/app_colors.dart';
import 'package:car_store_app/product/extension/context_extension.dart';
import 'package:car_store_app/product/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: context.paddingNormal,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.orange,
                      radius: 45,
                      child: Text(
                        "C",
                        style: context.textTheme.headlineLarge?.copyWith(
                          color: AppColors.background,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.dynamicHeight(0.05),
                    ),
                    Text(
                      "Sign Up",
                      style: context.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Find your dream car!",
                      style: context.textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomTextField(hintText: "Full name", icon: Icons.person_outline),
                    CustomTextField(hintText: "Email address", icon: Icons.mail_outline),
                    CustomTextField(hintText: "Phone umber", icon: Icons.phone_outlined),
                    CustomTextField(hintText: "Password", icon: Icons.lock_outline),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: context.dynamicHeight(0.01),
                    ),
                    Container(
                      height: context.dynamicHeight(0.08),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.orange,
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: context.textTheme.bodyLarge?.copyWith(
                            color: AppColors.background,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Expanded(
                            child: Divider(
                          thickness: 2,
                        )),
                        Text(
                          "Or",
                          style: context.textTheme.bodySmall,
                        ),
                        const Expanded(
                            child: Divider(
                          thickness: 2,
                        )),
                      ],
                    ),
                    Text(
                      "Sign up with",
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: AppColors.orange,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.dynamicHeight(0.01),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account? "),
                        SizedBox(width: context.dynamicHeight(0.01)),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Sign In",
                            style: context.textTheme.bodyLarge?.copyWith(
                              color: AppColors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
