// ignore_for_file: must_be_immutable

import 'package:car_store_app/product/constants/app_colors.dart';
import 'package:car_store_app/product/extension/context_extension.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.hintText,
    required this.icon,
    super.key,
  });
  String hintText;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      elevation: 1,
      shape: const StadiumBorder(),
      child: TextField(
        cursorColor: AppColors.orange,
        decoration: InputDecoration(
          fillColor: AppColors.white,
          focusColor: AppColors.orange,
          border: InputBorder.none,
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: context.textTheme.bodyMedium?.copyWith(
            color: AppColors.textfieldTextColor,
          ),
        ),
      ),
    );
  }
}
