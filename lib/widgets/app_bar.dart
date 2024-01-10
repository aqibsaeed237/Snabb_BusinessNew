import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double preferredHeight;
  final Color backgroundColor;
  final Color iconColor;
  final String title;
  final Color titleColor;

  MyAppBar({
    this.preferredHeight = 86.0, // Updated preferred height
    this.backgroundColor = primaryBlueColor,
    this.iconColor = Colors.white,
    this.title = "",
    this.titleColor = Colors.white,
  });

  @override
  Size get preferredSize => Size.fromHeight(preferredHeight);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: preferredHeight,
        color: backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: iconColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0), // Adjust left padding
              child: CustomTextWidget(
                text: title,
                color: titleColor,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
