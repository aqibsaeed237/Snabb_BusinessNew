import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final Color? color;
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment; // Added optional parameter
  final CrossAxisAlignment crossAxisAlignment; // Added optional parameter

  const CustomContainer({
    Key? key,
    this.height,
    this.color,
    required this.children,
    this.mainAxisAlignment =
        MainAxisAlignment.start, // Default is MainAxisAlignment.start
    this.crossAxisAlignment =
        CrossAxisAlignment.start, // Default is CrossAxisAlignment.start
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: primaryBlueColor,
          width: 1,
        ),
        color: color,
      ),
      height: height,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      ),
    );
  }
}
