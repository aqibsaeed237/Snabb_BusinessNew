// Constants
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snabb_business/utils/colors.dart';

final kRoundedFocusedBorderStyle = OutlineInputBorder(
  borderRadius: BorderRadius.circular(7),
  borderSide: const BorderSide(
    color: darkBlueColor,
    width: 1,
  ),
);

final kRoundedGreyBorderStyle = OutlineInputBorder(
  borderRadius: BorderRadius.circular(7),
  borderSide: const BorderSide(
    color: Colors.grey,
    width: 1,
  ),
);

final kTextFieldBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(7),
  border: Border.all(
    color: Colors.grey,
    width: 1,
  ),
);

// Onboarding TitleStyle
final kOnboardingTitleStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.bold,
  fontSize: 22,
  color: primaryBlueColor,
);

// HintText Style
final kHintStyle = GoogleFonts.poppins(
  fontSize: 18,
  color: hintLightGrayColor,
);
// Heading Style
final kHeadingStyle = GoogleFonts.poppins(
    fontSize: 30, color: whiteColor, fontWeight: FontWeight.bold);

final kTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.bold,
  fontSize: 14,
  color: blackColor,
);

final kTextFieldInputStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  fontSize: 14,
  color: hintLightGrayColor,
);

final TextStyle kTextFieldHintStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  fontSize: 14,
  color: hintLightGrayColor,
);
final TextStyle kLabelInputText = GoogleFonts.poppins(
  fontWeight: FontWeight.bold,
  fontSize: 12,
  color: hintLightGrayColor,
);

final TextStyle kTextStyle3 = GoogleFonts.poppins(
  fontWeight: FontWeight.bold,
  fontSize: 12,
  color: blackColor,
);
final kRoundedWhiteBorderStyle = OutlineInputBorder(
  borderRadius: BorderRadius.circular(7),
  borderSide: const BorderSide(
    color: hintLightGrayColor,
    width: 1,
  ),
);
