import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

enum TileType { expense, purchase, sale }

class CustomListTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String amount;
  final String date;
  final Color imageColor;
  final Color titleColor;
  final Color amountColor;
  final TileType tileType;

  CustomListTile({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.date,
    this.imageColor = Colors.white, // Provide a default color
    this.titleColor = Colors.black, // Provide a default color
    this.amountColor = Colors.black, // Provide a default color
    this.tileType = TileType.expense, // Provide a default type
  });

  factory CustomListTile.expense({
    required String imagePath,
    required String title,
    required String subtitle,
    required String amount,
    required String date,
    Color imageColor = Colors.white,
    Color titleColor = Colors.black,
    Color amountColor = Colors.black,
  }) {
    return CustomListTile(
      imagePath: imagePath,
      title: title,
      subtitle: subtitle,
      amount: amount,
      date: date,
      imageColor: imageColor,
      titleColor: titleColor,
      amountColor: amountColor,
      tileType: TileType.expense,
    );
  }

  // Add similar named constructors for purchase and sale

  @override
  Widget build(BuildContext context) {
    Color? tileColor;

    switch (tileType) {
      case TileType.expense:
        tileColor = expenseRedColor;
        break;
      case TileType.purchase:
        tileColor = darkBlueColor;
        break;
      case TileType.sale:
        tileColor = saleGreenColor;
        break;
      default:
        tileColor = Colors.transparent;
    }

    return Column(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: CustomTextWidget(
            text: date,
            color: hintLightGrayColor,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(top: 8),
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: hintLightGrayColor,
            ),
            child: Center(
              child: Image.asset(
                imagePath,
                width: 30,
                height: 30,
                color: imageColor,
              ),
            ),
          ),
          title: CustomTextWidget(
            text: title,
            color: titleColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          subtitle: CustomTextWidget(
            text: subtitle,
            color: hintLightGrayColor,
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
          trailing: CustomTextWidget(
            text: amount,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: amountColor,
          ),
        ),
      ],
    );
  }
}
