// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snabb_business/utils/colors.dart';

class MyButton extends StatelessWidget {
  final String btnName;
  final VoidCallback callBack;

  MyButton({required this.btnName, required this.callBack});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.065, // Adjust the height percentage as needed
      width: size.width * 0.6, // Adjust the width percentage as needed
      margin: EdgeInsets.only(
          top:
              size.height * 0.04), // Adjust the top margin percentage as needed
      child: MaterialButton(
        onPressed: callBack,
        color: primaryBlueColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size.width *
              0.1), // Adjust the border-radius percentage as needed
        ),
        child: Text(
          btnName,
          style: GoogleFonts.poppins(
            fontSize:
                size.width * 0.04, // Adjust the font size percentage as needed
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
