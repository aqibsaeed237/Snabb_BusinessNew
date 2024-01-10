import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snabb_business/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon? textFieldIcon;
  final bool hidePassword;
  final Icon? prefixIcon;
  final FocusNode focusNode = FocusNode();

  CustomTextField({
    Key? key,
    required this.hintText,
    this.textFieldIcon,
    this.prefixIcon,
    required this.hidePassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      obscureText: hidePassword,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: textFieldIcon,
        hintText: hintText,
        hintStyle: GoogleFonts.manrope(
          fontSize: 12,
          color: hintLightGrayColor,
          fontWeight: FontWeight.normal,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: textFieldBorderLightGrayColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: darkBlueColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.redAccent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.redAccent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      maxLines: 1,
    );
  }
}
