// ignore_for_file: must_be_immutable

import 'package:car_store_app/product/extension/context_extension.dart';
import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  ClickableText({
    required this.onTap,
    required this.text,
    super.key,
  });
  String text;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: context.textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
