import 'package:car_store_app/product/constants/app_colors.dart';
import 'package:car_store_app/product/constants/app_strings.dart';
import 'package:car_store_app/product/extension/context_extension.dart';
import 'package:car_store_app/product/widgets/click_rich_text.dart';
import 'package:car_store_app/product/widgets/custom_button.dart';
import 'package:car_store_app/product/widgets/custom_textfield.dart';
import 'package:car_store_app/product/widgets/text_divider.dart';
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
          child: const Column(
            children: [
              Expanded(
                flex: 2,
                child: HeaderLogoText(),
              ),
              Expanded(
                flex: 3,
                child: TextfieldArea(),
              ),
              Expanded(
                child: ButtonAndDivider(),
              ),
              Expanded(
                child: SocialMediaAndSignin(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SocialMediaAndSignin extends StatelessWidget {
  const SocialMediaAndSignin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        ClickableTextRow(
          onTap: () {},
          text: AppStrings.alreadyHaveAccount,
          clickableText: AppStrings.signIn,
          textClr: AppColors.orange,
        )
      ],
    );
  }
}

class ButtonAndDivider extends StatelessWidget {
  const ButtonAndDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.dynamicHeight(0.01),
        ),
        CustomButton(
          btnColor: AppColors.orange,
          text: AppStrings.signUp,
          dynamicHeight: 0.08,
          onTap: () {},
        ),
        DividerWithText(text: AppStrings.or, dividerThickness: 2),
        Text(
          AppStrings.signUpWith,
          style: context.textTheme.bodyMedium?.copyWith(
            color: AppColors.orange,
          ),
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
        CustomTextField(
          hintText: AppStrings.fullName,
          icon: Icons.person_outline,
        ),
        CustomTextField(hintText: AppStrings.email, icon: Icons.mail_outline),
        CustomTextField(hintText: AppStrings.phone, icon: Icons.phone_outlined),
        CustomTextField(
          hintText: AppStrings.password,
          icon: Icons.lock_outline,
        ),
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
          AppStrings.signUp,
          style: context.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          AppStrings.findYourDream,
          style: context.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
