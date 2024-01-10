import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';
import 'package:snabb_business/widgets/custom_button.dart';
import 'package:snabb_business/widgets/custom_container.dart';
import 'package:snabb_business/widgets/custom_textfield.dart';
import 'package:snabb_business/widgets/description_field_container.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class AddExpenseScreen extends StatelessWidget {
  const AddExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomExpandedAppBar(title: "Add expense"),
      body: Padding(
        padding: EdgeInsets.all(size.height * 0.02),
        child: CustomContainer(
          height: size.height * 0.74,
          color: whiteColor,
          children: [
            const Center(
              child: CustomTextWidget(
                text: "Expense Details",
                color: darkBlueColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ReusableTextLabel(text: "Select Date"),
                textFieldContainer(
                  text: "08-12-2023",
                  icon: Icons.calendar_month_outlined,
                ),
                const ReusableTextLabel(text: "Select Expense Category"),
                InkWell(
                  onTap: () {
                    addExpenseCategoryDialog(context);
                  },
                  child: textFieldContainer(
                    text: "Expense Category",
                    icon: Icons.production_quantity_limits,
                  ),
                ),
                const ReusableTextLabel(text: "Amount Paid As"),
                InkWell(
                  onTap: () {
                    paidAsDialog(context);
                  },
                  child: textFieldContainer(
                    text: "Amount Paid As",
                    icon: Icons.payments_outlined,
                  ),
                ),
                const ReusableTextLabel(text: "Expense Description"),
                DescriptionTextFieldContainer(
                  hintText: "Enter  description...",
                  controller: TextEditingController(),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                const ReusableInputTextLabel(
                  text: "Total Purchase: 10,000.00  PKR",
                ),
                const ReusableInputTextLabel(
                  text: 'Remaining Balance: 10,000.00  PKR',
                ),
                const ReusableTextLabel(text: "Add Media"),
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1,
                      color: darkBlueColor,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.camera_alt_outlined,
                              color: darkBlueColor,
                            ),
                            SizedBox(
                              height: size.height * 0.005,
                            ),
                            const CustomTextWidget(
                              text: 'From Camera',
                              color: darkBlueColor,
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        Container(
                          height: size.width * 0.14,
                          width: 1,
                          color: Colors.grey,
                        ),
                        Column(
                          children: [
                            const Icon(
                              Icons.drive_folder_upload_outlined,
                              color: darkBlueColor,
                            ),
                            SizedBox(
                              height: size.height * 0.005,
                            ),
                            const CustomTextWidget(
                              text: 'From Camera',
                              color: darkBlueColor,
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                mainButton(
                  text: "Save",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Add New Supplier Company Dialog
  void addExpenseCategoryDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: whiteColor,
          content: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: const Padding(
              padding: EdgeInsets.all(4),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: darkBlueColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomTextWidget(
                          text: "Add Custom Category",
                          color: darkBlueColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 2),
                    ReusableTextLabel(
                      text: "Rent/Mortgage",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Utilities",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Office Supplies",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Furniture and Fixtures",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Employee Salaries and Benefits",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Mobile & Internet",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Mobile & Internet",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "POS (Point of Sale) System",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Tools & Accessories",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Entertainment",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Taxes",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Marketing and Advertising",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Repair & Maintenance",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Research and Development",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Business Travel",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Business Travel",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Health",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Legal Expenses",
                    ),
                    Divider(),
                    ReusableTextLabel(
                      text: "Miscellaneous",
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  // Paid as dialog
  void paidAsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        var size = MediaQuery.of(context).size;
        return AlertDialog(
          backgroundColor: whiteColor,
          content: Container(
            width: size.width * 0.7,
            constraints: BoxConstraints(maxHeight: size.height * 0.56),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: CustomTextWidget(
                      text: "Paid As",
                      color: darkBlueColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  const Divider(),
                  const SizedBox(height: 4),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: ReusableInputTextLabel(
                      text: "Invoice #: 17874",
                    ),
                  ),
                  ReusableTextLabel(
                    text: "Cash",
                  ),
                  textFormFieldContainer(text: "20000.00"),
                  ReusableTextLabel(
                    text: "Bank",
                  ),
                  textFormFieldContainer(text: "20000.00"),
                  ReusableTextLabel(
                    text: "Other Source",
                  ),
                  textFormFieldContainer(text: "10000.00"),
                  SizedBox(
                    height: size.height * 0.09,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ReusableTextLabel(
                                text: "Receivable",
                              ),
                              textFormFieldContainer(text: "5000.00"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              ReusableTextLabel(text: "Select Date"),
                              textFieldContainer(
                                text: "08-12-2023",
                                icon: Icons.calendar_month_outlined,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  ReusableInputTextLabel(
                    text: "Total Sale: 10,000.00  PKR",
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  mainButton(
                    text: 'Add ',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // Function for creating text field containers
  Widget textFieldContainer({required String text, required IconData icon}) {
    return GestureDetector(
      onTap: () {},
      child: textFormFieldContainer(text: text, icon: icon),
    );
  }
}
