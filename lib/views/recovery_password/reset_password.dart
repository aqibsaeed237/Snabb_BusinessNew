import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/views/recovery_password/get_otp.dart';
import 'package:snabb_business/widgets/custom_button.dart';
import 'package:snabb_business/widgets/custom_container.dart';
import 'package:snabb_business/widgets/custom_textfield.dart';
import 'package:snabb_business/widgets/reusable_text.dart';
import 'package:snabb_business/widgets/validation.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; // Correct usage of MediaQuery
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.04),
          child: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                        color: hintLightGrayColor,
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      const CustomTextWidget(
                        text: "Back",
                        color: Colors.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
                Container(child: Image.asset(forgotPassImage)),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Enter your ',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Registered Email',
                        style: GoogleFonts.manrope(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextSpan(
                        text:
                            ' for the verification process, we will send code to your email.',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                CustomContainer(
                  height: size.height * 0.3,
                  children: [
                    const ReusableText2(
                      text: "Email",
                    ),
                    SizedBox(height: size.height * 0.02),
                    TextFormFieldWidget(
                      controller: TextEditingController(),
                      obscureText: false,
                      textInputType: TextInputType.emailAddress,
                      hintText: "example@gmail.com",
                      focusedBorder: InputBorder.none,
                      keyboardType: TextInputType.emailAddress,
                      validator: validateEmail,
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GetOTPScreen()));
                        },
                        child: mainButton(text: "Get OTP"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
