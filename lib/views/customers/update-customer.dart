import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';

import 'package:snabb_business/widgets/alert_dialog.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';
import 'package:snabb_business/widgets/custom_button.dart';
import 'package:snabb_business/widgets/custom_container.dart';
import 'package:snabb_business/widgets/custom_textfield.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class UpdateCustomerScreen extends StatelessWidget {
  const UpdateCustomerScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomExpandedAppBar(title: "Update data"),
      body: Padding(
        padding: EdgeInsets.all(size.height * 0.02),
        child: CustomContainer(
          height: size.height * 0.74,
          color: whiteColor,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReusableTextLabel(text: "Customer Name"),
                    textFormFieldContainer(
                      text: "ABC LTD",
                    ),
                    const ReusableTextLabel(text: "Organization Number"),
                    textFormFieldContainer(
                      text: "2,000.00",
                    ),
                    const ReusableTextLabel(text: "Customer Address"),
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
                                    "Are you sure you want to delete a Customer?",
                                context: context);
                          },
                          child: smallButton(
                            text: "Delete",
                            color: expenseRedColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
