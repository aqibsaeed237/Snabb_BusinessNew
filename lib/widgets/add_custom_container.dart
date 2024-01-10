import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class CustomImageContainer extends StatelessWidget {
  final String image;
  final String text;

  const CustomImageContainer({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(width: 1, color: hintLightGrayColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 52,
              width: 52,
              child: Image.asset(
                image,
                fit: BoxFit.scaleDown,
              ),
            ),
            CustomTextWidget(
              text: text,
              color: hintLightGrayColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
