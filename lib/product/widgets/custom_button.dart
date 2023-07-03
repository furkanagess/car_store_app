// ignore_for_file: must_be_immutable

import 'package:car_store_app/product/constants/app_colors.dart';

import 'package:car_store_app/product/extension/context_extension.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.onTap,
    required this.btnColor,
    required this.text,
    required this.dynamicHeight,
    super.key,
  });
  String text;
  double dynamicHeight;
  Color btnColor;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: context.dynamicHeight(dynamicHeight),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: btnColor,
        ),
        child: Center(
          child: Text(
            text,
            style: context.textTheme.bodyLarge?.copyWith(
              color: AppColors.background,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
