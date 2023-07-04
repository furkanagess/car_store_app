import 'package:car_store_app/product/constants/app_colors.dart';
import 'package:car_store_app/product/constants/app_strings.dart';
import 'package:car_store_app/product/extension/context_extension.dart';
import 'package:car_store_app/product/widgets/click_rich_text.dart';
import 'package:car_store_app/product/widgets/clickable_text.dart';
import 'package:car_store_app/product/widgets/custom_button.dart';
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
          child: const Column(
            children: [
              Expanded(
                flex: 4,
                child: HeaderLogoText(),
              ),
              Expanded(
                flex: 2,
                child: TextfieldArea(),
              ),
              Expanded(
                flex: 4,
                child: ButtonAndSignup(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonAndSignup extends StatelessWidget {
  const ButtonAndSignup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.dynamicHeight(0.03),
        ),
        ClickableText(
          onTap: () {},
          text: AppStrings.forgotPassword,
        ),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        CustomButton(
          onTap: () {},
          btnColor: AppColors.orange,
          text: AppStrings.login,
          dynamicHeight: 0.08,
        ),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        ClickableTextRow(
          text: AppStrings.dontHaveAccount,
          onTap: () {},
          clickableText: AppStrings.signUp,
          textClr: AppColors.orange,
        ),
      ],
    );
  }
}

class TextfieldArea extends StatelessWidget {
  const TextfieldArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTextField(hintText: AppStrings.userName, icon: Icons.person_outlined),
        CustomTextField(hintText: AppStrings.password, icon: Icons.lock_outline),
      ],
    );
  }
}

class HeaderLogoText extends StatelessWidget {
  const HeaderLogoText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.dynamicHeight(0.1),
        ),
        CircleAvatar(
          backgroundColor: AppColors.orange,
          radius: 45,
          child: Text(
            AppStrings.logo,
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
          AppStrings.login,
          style: context.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          AppStrings.welcome,
          style: context.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
