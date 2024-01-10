import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/utils/constants.dart';

class DescriptionTextFieldContainer extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final TextEditingController controller;
  final double height;
  final int maxLines;
  final EdgeInsets contentPadding;

  const DescriptionTextFieldContainer({
    Key? key,
    required this.hintText,
    this.icon,
    required this.controller,
    this.height = 100.0,
    this.maxLines = 2,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: hintLightGrayColor, width: 1),
        color: hintLightGrayColor,
      ),
      padding: contentPadding,
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: kLabelInputText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
