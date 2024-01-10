import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';

class AmountContainer extends StatelessWidget {
  final double? imageAngle;
  final Color color;
  final String title;
  final String amount;

  const AmountContainer({
    Key? key,
    this.imageAngle,
    required this.color,
    required this.title,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Transform.rotate(
                  angle: imageAngle!,
                  child: Image.asset(
                    GoBackIcon,
                    // Other properties for your image...
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, left: 5, right: 10),
              child: Text(
                amount,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
