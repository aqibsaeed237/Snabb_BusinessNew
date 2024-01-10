import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/alert_dialog.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';
import 'package:snabb_business/widgets/custom_button.dart';
import 'package:snabb_business/widgets/custom_container.dart';
import 'package:snabb_business/widgets/custom_textfield.dart';

import 'package:snabb_business/widgets/reusable_text.dart';

class UpdateSuppliercreen extends StatelessWidget {
  const UpdateSuppliercreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomExpandedAppBar(title: "Update data"),
      body: Padding(
        padding: EdgeInsets.all(size.height * 0.02),
        child: SingleChildScrollView(
          child: CustomContainer(
            height: size.height * 0.8,
            color: whiteColor,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReusableTextLabel(text: "Supplier Name"),
                  textFormFieldContainer(
                    text: "ABC LTD",
                  ),
                  const ReusableTextLabel(text: "Organization Number"),
                  textFormFieldContainer(
                    text: "2,000.00",
                  ),
                  const ReusableTextLabel(text: "Supplier Address"),
                  textFieldContainer(
                    text: "731 Wrangler Ave.Bronx, NY 10469",
                  ),
                  const ReusableTextLabel(text: "Contact No #"),
                  textFieldContainer(
                    text: "1234567896",
                  ),
                  const ReusableTextLabel(text: "Email"),
                  textFormFieldContainer(
                    text: "abc@gmail.com",
                  ),
                  const ReusableTextLabel(text: "Website"),
                  textFormFieldContainer(
                    text: "abc.com",
                  ),
                  const ReusableTextLabel(text: "City"),
                  textFieldContainer(
                    text: "New York",
                  ),
                  const ReusableTextLabel(text: "Country"),
                  textFieldContainer(
                    text: "United State",
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: smallButton(
                          text: "Update",
                          color: darkBlueColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ShowAlertDialog.show(
                              title:
                                  "Are you sure you want to delete a Supplier?",
                              context: context);
                        },
                        child: smallButton(
                          color: expenseRedColor,
                          text: "Delete",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
