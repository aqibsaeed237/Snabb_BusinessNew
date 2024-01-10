import 'package:flutter/material.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/views/login/login_screen.dart';

import 'package:snabb_business/widgets/app_bar.dart';
import 'package:snabb_business/widgets/custom_button.dart';
import 'package:snabb_business/widgets/custom_container.dart';

import 'package:snabb_business/widgets/custom_textfield.dart';
import 'package:snabb_business/widgets/reusable_text.dart';
import 'package:snabb_business/widgets/validation.dart';

class ResetNewPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.height * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.04,
                ),
                const CustomTextWidget(
                  text: "Set a new password",
                  color: darkBlueColor,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                const CustomTextWidget(
                  text: "Enter your new password to reset\n your account.",
                  color: hintLightGrayColor,
                  fontSize: 16,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                CustomContainer(
                  height: size.height * 0.4,
                  children: [
                    const ReusableText2(
                      text: "Enter New Password",
                    ),
                    SizedBox(height: size.height * 0.01),
                    TextFormFieldWidget(
                      controller:
                          TextEditingController(), // Note: Stateless widget can't have TextEditingController
                      textInputType: TextInputType.emailAddress,
                      hintText: "Enter New Password",
                      focusedBorder: InputBorder.none,
                      obscureText: true,
                      obscuringCharacter: '*',
                      keyboardType: TextInputType.text,
                      suffixIcon: const Icon(Icons.remove_red_eye_rounded),
                      onTap:
                          () {}, // You may need to handle this differently in a stateless widget
                      validator: validatePassword,
                    ),
                    SizedBox(height: size.height * 0.01),
                    const ReusableText2(
                      text: "Retype Password",
                    ),
                    SizedBox(height: size.height * 0.01),
                    TextFormFieldWidget(
                      controller:
                          TextEditingController(), // Note: Stateless widget can't have TextEditingController
                      textInputType: TextInputType.emailAddress,
                      hintText: "Retype Password",
                      focusedBorder: InputBorder.none,
                      obscureText: true,
                      obscuringCharacter: '*',
                      keyboardType: TextInputType.text,
                      suffixIcon: const Icon(Icons.remove_red_eye_rounded),
                      onTap:
                          () {}, // You may need to handle this differently in a stateless widget
                      validator: validatePassword,
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {
                        showModelBottomSheet(context);
                      },
                      child: mainButton(
                        text: "Reset Password",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  showModelBottomSheet(context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          height: MediaQuery.of(context).size.height * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue, // You can customize the background color
                ),
                child: Image.asset(
                  thumbCircle, // Replace with the actual path to your image asset
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              const CustomTextWidget(
                text: "Password reset\nsuccessfully",
                color: blackColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: mainButton(
                    text: "Return to Login",
                  )),
            ],
          ),
        );
      },
    );
  }
}
