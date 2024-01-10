import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/utils/constants.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class CustomExpandedAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;

  CustomExpandedAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: primaryBlueColor,
      ),
      child: AppBar(
        backgroundColor:
            Colors.transparent, // Make app bar background transparent
        elevation: 0, // Remove app bar shadow
        automaticallyImplyLeading: false, // Remove the back button
        title: Center(
          child: Text(
            title,
            style: kHeadingStyle.copyWith(
                color: whiteColor), // Set title color to white
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
