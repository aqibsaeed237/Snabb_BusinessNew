import 'package:flutter/material.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/custom_container.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class FreePlan extends StatelessWidget {
  final String? currency;
  final bool selected;
  final Function? buyFun;

  const FreePlan({
    required this.currency,
    required this.selected,
    required this.buyFun,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: MediaQuery.sizeOf(context).width * 0.6,
      child: CustomContainer(
        // decoration: BoxDecoration(
        //   color: lightBlueColor,
        //   borderRadius: const BorderRadius.all(Radius.circular(15)),
        //   border: selected
        //       ? Border.all(color: Colors.deepOrangeAccent, width: 7)
        //       : Border.all(color: darkBlueColor!, width: 7),
        // ),
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          const SizedBox(height: 16),
          const CustomTextWidget(
            text: 'Free Member',
            color: darkBlueColor,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
          const SizedBox(height: 8),
          Image.asset(freeSubscriptionImage),
          const SizedBox(height: 8),
          const CustomTextWidget(
            text: "PKR/year",
            color: darkBlueColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 16),
          ...featureTexts([
            '20 Entries',
            'Graph',
            'Credit debit management',
          ]),
          const SizedBox(height: 30),
          const Spacer(),
          const SizedBox(height: 16),
          const Spacer(),
          buildSelectButton(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  List<Widget> featureTexts(List<String> texts) {
    return texts
        .map(
          (text) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: CustomTextWidget(
              color: hintLightGrayColor,
              text: text,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
        .toList();
  }

  Widget buildSelectButton() {
    return !selected
        ? GestureDetector(
            onTap: buyFun as void Function()?,
            child: Container(
              height: 36,
              width: 180,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Select Plan',
                  style: TextStyle(
                    fontSize: 11,
                    letterSpacing: 2,
                    color: darkBlueColor,
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
            child: const Center(
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
