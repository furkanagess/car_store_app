// ignore_for_file: must_be_immutable

import 'package:car_store_app/product/extension/context_extension.dart';
import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  DividerWithText({
    required this.text,
    required this.dividerThickness,
    super.key,
  });
  String text;
  double dividerThickness;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: dividerThickness,
          ),
        ),
        Text(
          text,
          style: context.textTheme.bodySmall,
        ),
        Expanded(
          child: Divider(
            thickness: dividerThickness,
          ),
        ),
      ],
    );
  }
}
