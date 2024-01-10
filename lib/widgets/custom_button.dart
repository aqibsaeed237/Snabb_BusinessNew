import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snabb_business/utils/colors.dart';

Widget mainButton({
  required String text,
  double? width,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Center(
      child: Container(
        height: 43,
        width: width,
        decoration: BoxDecoration(
          color: darkBlueColor,
          borderRadius: BorderRadius.circular(27),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.manrope(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}

Widget smallButton({
  required String text,
  Color? color,
  double? width,
}) {
  return Container(
    height: 32,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(27),
    ),
    child: Center(
      child: Text(
        text,
        style: GoogleFonts.manrope(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

Widget loadingBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(43, 101, 236, 1),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 0,
            blurRadius: 15,
            offset: Offset(1, 10),
            color: Color.fromRGBO(7, 1, 87, 0.1),
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Please Wait...",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
