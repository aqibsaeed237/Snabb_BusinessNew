import 'package:flutter/material.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/custom_container.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class PaidPlan extends StatelessWidget {
  final String currency;
  final String price;
  final bool selected;
  final Function? buyFun;

  const PaidPlan({
    Key? key,
    required this.buyFun,
    required this.price,
    required this.selected,
    required this.currency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: MediaQuery.sizeOf(context).width * 0.6,
      child: CustomContainer(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          CustomTextWidget(
            text: 'Premium Member',
            color: darkBlueColor,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Image.asset(paidSubscriptionImage),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          CustomTextWidget(
              text: "PKR/year",
              color: darkBlueColor,
              fontSize: 20,
              fontWeight: FontWeight.w600),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Container(
            height: 130,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    FeatureText('Expense reports'),
                    FeatureText('Purchase reports'),
                    FeatureText('Sales reports'),
                    FeatureText('Cash flow reports'),
                    FeatureText('Web access'),
                    FeatureText('Invoice maker'),
                    FeatureText('Credit debit management'),
                    FeatureText('Unlimited Entries'),
                    FeatureText('All graph'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Spacer(),
          buildSelectButton(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        ],
      ),
    );
  }

  Widget FeatureText(String text) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: CustomTextWidget(
          color: hintLightGrayColor,
          text: text,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ));
  }

  Widget buildSelectButton() {
    return !selected
        ? GestureDetector(
            onTap: () {},
            child: Container(
              height: 36,
              width: 180,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: darkBlueColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Select Plan',
                  style: TextStyle(
                    fontSize: 11,
                    letterSpacing: 2,
                    color: whiteColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          )
        : Container(
            height: 35,
            width: 130,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: CustomTextWidget(
                text: 'Selected',
                color: darkGrayColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
  }
}
