import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';
import 'package:snabb_business/widgets/custom_container.dart';

import 'package:snabb_business/widgets/dropdown_container.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

// ignore: must_be_immutable
class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key});

  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomExpandedAppBar(
          title: "Setting",
        ),
        body: Padding(
          padding: EdgeInsets.all(size.height * 0.02),
          child: CustomContainer(
            color: Colors.transparent,
            height: size.height * 0.2,
            children: [
              CustomTextWidget(
                  text: "Basic Setting",
                  color: blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomTextWidget(
                      text: "Language",
                      color: blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  CustomDropdown(
                    items: const ['English'],
                    selectedItem: selectedLanguage,
                    onChanged: (p0) => (),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomTextWidget(
                      text: "Currency",
                      color: blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  CustomDropdown(
                    items: ['USD'],
                    selectedItem: "USD",
                    onChanged: (p0) => (),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
