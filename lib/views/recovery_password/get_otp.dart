import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/views/recovery_password/create_new_password.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:snabb_business/widgets/custom_button.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class GetOTPScreen extends StatelessWidget {
  const GetOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                SizedBox(
                  height: size.height * 0.02,
                ),
                Image.asset(OTPImage),
                SizedBox(
                  height: size.height * 0.04,
                ),
                const CustomTextWidget(
                    text: 'OTP Verification',
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                SizedBox(
                  height: size.height * 0.04,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Enter the OTP sent to  ',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'example@gmail.com',
                        style: GoogleFonts.manrope(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                OtpTextField(
                  numberOfFields: 4,
                  borderColor: darkBlueColor,
                  cursorColor: darkBlueColor,
                  showFieldAsBox: true,

                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        });
                  }, // end onSubmit
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Didn’t you receive the OTP?  ',
                    style: GoogleFonts.manrope(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: hintLightGrayColor,
                    ),
                    children: [
                      TextSpan(
                        text: 'Resend OTP',
                        style: GoogleFonts.manrope(
                            color: darkBlueColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const CustomTextWidget(
                    text: "01:13",
                    color: darkBlueColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w700),
                SizedBox(
                  height: size.height * 0.04,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          (MaterialPageRoute(
                              builder: (context) => ResetNewPassword())));
                    },
                    child: mainButton(text: "Verify"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
