import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/utils/constants.dart';
import 'package:snabb_business/views/login/login_screen.dart';
import 'package:snabb_business/widgets/app_bar.dart';
import 'package:snabb_business/widgets/buttons.dart';
import 'package:snabb_business/widgets/custom_button.dart';
import 'package:snabb_business/widgets/custom_container.dart';
import 'package:snabb_business/widgets/custom_textfield.dart';
import 'package:snabb_business/widgets/reusable_text.dart';
import 'package:snabb_business/widgets/validation.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String countryCode = '';
  bool isPasswordObscure = true;
  bool isPasswordConfirmObscure = true;
  final key = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  void onCountryChange(PhoneNumber number) {
    setState(() {
      countryCode = number.countryISOCode;
      print("countryCode $countryCode");
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: Form(
          key: key,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const ReusableText(text: "Create New Account"),
                    SizedBox(height: size.height * 0.01),
                    CustomContainer(
                      height: size.height * 0.7,
                      children: [
                        const ReusableText2(
                          text: "Full Name",
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormFieldWidget(
                          controller: emailController,
                          obscureText: false,
                          textInputType: TextInputType.name,
                          hintText: "Enter Name",
                          focusedBorder: InputBorder.none,
                          keyboardType: TextInputType.text,
                        ),
                        SizedBox(height: size.height * 0.01),
                        const ReusableText2(
                          text: "Email",
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormFieldWidget(
                            controller: TextEditingController(),
                            obscureText: false,
                            textInputType: TextInputType.emailAddress,
                            hintText: "Enter Email",
                            focusedBorder: InputBorder.none,
                            keyboardType: TextInputType.emailAddress,
                            validator: validateEmail),
                        SizedBox(height: size.height * 0.01),
                        const ReusableText2(
                          text: "Phone",
                        ),
                        SizedBox(height: size.height * 0.01),
                        Container(
                          height: size.height * 0.09,
                          child: IntlPhoneField(
                            showCountryFlag: false,
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "Outfit",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                            controller: phoneController,
                            initialCountryCode: 'US',
                            onChanged: onCountryChange,
                            decoration: InputDecoration(
                              hintText: "Phone Number",
                              hintStyle: kTextFieldHintStyle,
                              fillColor: whiteColor,
                              filled: true,
                              prefixIcon: const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(Icons.arrow_drop_down),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: const BorderSide(
                                    color: darkBlueColor, width: 1),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                            ),
                          ),
                        ),
                        const ReusableText2(
                          text: "Create Password",
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormFieldWidget(
                            controller: passwordController,
                            textInputType: TextInputType.emailAddress,
                            hintText: "Type Password",
                            focusedBorder: InputBorder.none,
                            obscureText: isPasswordObscure,
                            obscuringCharacter: '*',
                            keyboardType: TextInputType.text,
                            suffixIcon: InkWell(
                              child: isPasswordObscure
                                  ? const Icon(Icons.remove_red_eye_rounded)
                                  : const Icon(Icons.remove_red_eye),
                            ),
                            onTap: () {
                              setState(() {
                                isPasswordObscure = !isPasswordObscure;
                              });
                            },
                            validator: validatePassword),
                        SizedBox(height: size.height * 0.01),
                        const ReusableText2(
                          text: "Retype Password",
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormFieldWidget(
                          controller: passwordConfirmController,
                          textInputType: TextInputType.emailAddress,
                          hintText: "Retype Password",
                          focusedBorder: InputBorder.none,
                          obscureText: isPasswordObscure,
                          obscuringCharacter: '*',
                          keyboardType: TextInputType.text,
                          suffixIcon: InkWell(
                            child: isPasswordObscure
                                ? const Icon(Icons.remove_red_eye_rounded)
                                : const Icon(Icons.remove_red_eye),
                          ),
                          onTap: () {
                            setState(() {
                              isPasswordObscure = !isPasswordObscure;
                            });
                          },
                          validator: validatePassword,
                        ),
                        SizedBox(height: size.height * 0.02),
                        GestureDetector(
                          onTap: () {
                            // Access data from the signupdata map
                            // Example: var data = signupdata['key'];
                            // ... rest of the code
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: mainButton(
                            text: "SignUp",
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    Column(
                      children: [
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
                        SizedBox(height: size.height * 0.01),
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
                                  text: 'Sign In',
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
                                                  const LoginScreen()));
                                    }),
                            ],
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                      ],
                    )
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
