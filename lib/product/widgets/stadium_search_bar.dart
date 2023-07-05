// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class StadiumSearchBar extends StatelessWidget {
  StadiumSearchBar({
    required this.hintText,
    required this.defaultColor,
    required this.hintColor,
    super.key,
    this.controller,
    this.iconTap,
    this.onSubmit,
  });
  TextEditingController? controller;
  Color defaultColor;
  Color hintColor;
  VoidCallback? iconTap;
  VoidCallback? onSubmit;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: hintColor,
      ),
      cursorColor: hintColor,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: defaultColor,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintColor,
        ),
        prefixIcon: IconButton(
          icon: Icon(
            Icons.search,
            color: hintColor,
            size: 30,
          ),
          onPressed: iconTap,
        ),
      ),
      onSubmitted: (_) => onSubmit,
    );
  }
}
