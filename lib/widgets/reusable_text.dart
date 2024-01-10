import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/utils/constants.dart';

//* TitleText FS 18 blackColor
class ReusableText extends StatelessWidget {
  final String text;
  const ReusableText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kOnboardingTitleStyle,
    );
  }
}

//* Normal Text Black fontsize 14
class ReusableText2 extends StatelessWidget {
  final String text;
  const ReusableText2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kTextStyle,
    );
  }
}

//* LabelinputText for customContainer
class ReusableInputTextLabel extends StatelessWidget {
  final String text;
  const ReusableInputTextLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kLabelInputText,
    );
  }
}

//* LabelText for customContainer
class ReusableTextLabel extends StatelessWidget {
  final String text;
  const ReusableTextLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        text,
        style: kTextStyle3,
      ),
    );
  }
}

//* InputtextfieldText 14 fs, hintlightgraycolor
class ReusableInputText extends StatelessWidget {
  final String text;
  const ReusableInputText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kTextFieldHintStyle,
    );
  }
}

//* Custom Text Reusable for all
class CustomTextWidget extends StatelessWidget {
  final String? text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign? textAlign;
  final bool underline; // New parameter for underline

  const CustomTextWidget({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    this.textAlign,
    this.underline = false, // Default value is false
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: underline
            ? TextDecoration.underline
            : null, // Apply underline if true
      ),
      textAlign: textAlign,
    );
  }
}
