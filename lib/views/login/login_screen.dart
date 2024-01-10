import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/views/addDataScreen/selectToAdd.dart';
import 'package:snabb_business/views/signup/signup.dart';
import 'package:snabb_business/widgets/app_bar.dart';
import 'package:snabb_business/widgets/buttons.dart';
import 'package:snabb_business/widgets/custom_button.dart';
import 'package:snabb_business/widgets/custom_container.dart';
import 'package:snabb_business/widgets/custom_textfield.dart';
import 'package:snabb_business/widgets/reusable_text.dart';
import 'package:snabb_business/widgets/validation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordConfirmObscure = true;
  bool isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.02),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.2,
                child: Image.asset(
                  loginImage,
                  fit: BoxFit.scaleDown,
                ),
              ),
              const ReusableText(text: "Login to Your Account"),
              SizedBox(height: size.height * 0.02),
              CustomContainer(
                height: size.height * 0.43,
                children: [
                  const ReusableText2(
                    text: "Email",
                  ),
                  SizedBox(height: size.height * 0.01),
                  TextFormFieldWidget(
                    controller: TextEditingController(),
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                    hintText: "example@gmail.com",
                    focusedBorder: InputBorder.none,
                    keyboardType: TextInputType.emailAddress,
                    validator: validateEmail,
                  ),
                  SizedBox(height: size.height * 0.01),
                  const ReusableText2(
                    text: "Password",
                  ),
                  SizedBox(height: size.height * 0.01),
                  TextFormFieldWidget(
                      controller: TextEditingController(),
                      textInputType: TextInputType.emailAddress,
                      hintText: "*******",
                      focusedBorder: InputBorder.none,
                      obscureText: isPasswordObscure,
                      obscuringCharacter: '*',
                      keyboardType: TextInputType.text,
                      suffixIcon: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: isPasswordObscure
                              ? const Icon(Icons.remove_red_eye_rounded)
                              : const Icon(Icons.remove_red_eye),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isPasswordObscure = !isPasswordObscure;
                        });
                      },
                      validator: validatePassword),
                  SizedBox(height: size.height * 0.03),
                  Center(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
                          },
                          child: mainButton(
                            text: "Sign In",
                          ))),
                  SizedBox(height: size.height * 0.02),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SelectToAddDataScreen()));
                      },
                      child: const CustomTextWidget(
                        text: 'Forget Password?',
                        color: darkBlueColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        underline: true,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 1,
                    width: size.width * 0.16,
                    color: Colors.grey,
                  ),
                  const CustomTextWidget(
                    text: ' or continue with ',
                    color: hintLightGrayColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    underline: false,
                  ),
                  Container(
                    height: 1,
                    width: size.width * 0.16,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  googleButton(context),
                  Container(
                    height: size.height * 0.02,
                    width: 1,
                    color: Colors.grey,
                  ),
                  facebookButton(context)
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: GoogleFonts.manrope(
                    color: hintLightGrayColor,
                    fontSize: 13.0,
                  ),
                  children: [
                    TextSpan(
                        text: 'Sign Up',
                        style: GoogleFonts.manrope(
                          color: darkBlueColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
                          }),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
