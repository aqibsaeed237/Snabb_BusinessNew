import 'package:flutter/material.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';
import 'package:snabb_business/widgets/custom_container.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    Widget buildContactInfoRow(IconData icon, String text) {
      return Container(
        height: size.height * 0.05,
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryBlueColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: darkBlueColor,
              ),
              SizedBox(width: size.width * 0.04),
              CustomTextWidget(
                text: text,
                color: darkBlueColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
      );
    }

    Widget buildSocialMediaRow(String imagePath, String text) {
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: size.height * 0.05,
          width: size.width * 0.4,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: hintLightGrayColor),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  imagePath,
                  fit: BoxFit.scaleDown,
                ),
                CustomTextWidget(
                  text: text,
                  color: hintLightGrayColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: CustomExpandedAppBar(
        title: "Reach Us",
      ),
      body: Padding(
        padding: EdgeInsets.all(size.height * 0.02),
        child: CustomContainer(
          color: Colors.transparent,
          height: size.height *
              0.6, // Increase the size to 70% of the screen height
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomTextWidget(
              text: "Direct Contact",
              color: primaryBlueColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: size.height * 0.02),
            buildContactInfoRow(Icons.phone_outlined, "1234567890"),
            SizedBox(height: size.height * 0.01),
            buildContactInfoRow(
              Icons.email_outlined,
              "help@snabbusinss.com",
            ),
            SizedBox(height: size.height * 0.02),
            const Divider(),
            SizedBox(height: size.height * 0.02),
            const Center(
              child: CustomTextWidget(
                text: "Find us",
                color: primaryBlueColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            buildSocialMediaRow(fbImage, "Snabbusiness"),
            buildSocialMediaRow(instagramImage, "Snabbusiness"),
            buildSocialMediaRow(linkedInImage, "Snabbusiness"),
            buildSocialMediaRow(youtubeImage, "Snabbusiness"),
          ],
        ),
      ),
    );
  }
}
