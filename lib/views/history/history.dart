import 'package:flutter/material.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';

import 'package:snabb_business/widgets/custom_list_tile.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomExpandedAppBar(
        title: "History",
      ),
      body: Padding(
        padding: EdgeInsets.all(size.height * 0.02),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildDateColumn("From", "10-1-2023", size),
                buildDateColumn("To", "10-1-2023", size),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            SizedBox(height: size.height * 0.02),
            Expanded(
              child: buildHistoryList(),
            ),
          ],
        ),
      ),
    );
  }

  Column buildDateColumn(String label, String date, Size size) {
    return Column(
      children: [
        CustomTextWidget(
          text: label,
          color: primaryBlueColor,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 4),
        Container(
          height: size.height * 0.04,
          width: size.width * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            color: hintLightGrayColor,
            border: Border.all(color: hintLightGrayColor, width: 1),
          ),
          child: Center(
            child: CustomTextWidget(
              text: date,
              color: hintLightGrayColor,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildHistoryList() {
    return ListView.builder(
      itemCount: 5, // Replace with your desired item count
      itemBuilder: (BuildContext context, int index) {
        // Replace the placeholder values with your actual data
        return CustomListTile(
          imagePath: addExpenseImage,
          title: 'Sale ',
          subtitle: 'Mobile & Internet ',
          amount: '\$100.00',
          date: '2 Jan 2014',
          tileType: TileType.expense,
          // Optional: imageColor, titleColor, and amountColor can be specified here
        );
      },
    );
  }
}
