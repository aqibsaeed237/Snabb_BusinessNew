import 'package:flutter/material.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

Widget socialButton({
  required String text,
  required String imageAsset,
  required Color buttonColor,
  required Color textColor,
  required BuildContext context,
}) {
  return Container(
    decoration: BoxDecoration(
      color: buttonColor,
      border: Border.all(
        color: hintLightGrayColor,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
      child: Padding(
        padding: EdgeInsets.all(6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              // fit: BoxFit.scaleDown,
            ),
            SizedBox(width: 10.0),
            CustomTextWidget(
              text: text,
              color: textColor,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(width: 10.0),
          ],
        ),
      ),
    ),
  );
}

Widget googleButton(BuildContext context) {
  return socialButton(
    text: 'Google',
    imageAsset: GoogleImage,
    buttonColor: whiteColor,
    textColor: darkGrayColor,
    context: context,
  );
}

Widget facebookButton(BuildContext context) {
  return socialButton(
    text: 'Facebook',
    imageAsset: FacebookImage,
    buttonColor: Colors.white,
    textColor: darkGrayColor,
    context: context,
  );
}
