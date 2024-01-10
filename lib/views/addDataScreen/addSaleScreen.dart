import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';
import 'package:snabb_business/widgets/custom_button.dart';
import 'package:snabb_business/widgets/custom_container.dart';
import 'package:snabb_business/widgets/custom_textfield.dart';
import 'package:snabb_business/widgets/description_field_container.dart';
import 'package:snabb_business/widgets/info_container_existing.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class AddSaleScreen extends StatelessWidget {
  const AddSaleScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomExpandedAppBar(title: "Add Sale"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomContainer(
          // height: size.height * 0.76,

          color: whiteColor,
          children: [
            // Content of CustomContainer
            const CustomTextWidget(
              text: "Customer Details",
              color: darkBlueColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ReusableTextLabel(text: "Select Date"),
                GestureDetector(
                  onTap: () {},
                  child: textFieldContainer(
                    text: "08-12-2023",
                    icon: Icons.calendar_month_outlined,
                  ),
                ),
                const ReusableTextLabel(text: "Select Sale Method"),
                InkWell(
                  onTap: () {
                    saleMethodDialog(context);
                  },
                  child: textFieldContainer(
                    text: "Sale Method",
                    icon: Icons.sell_outlined,
                  ),
                ),
                const ReusableTextLabel(text: "Amount Received As"),
                InkWell(
                  onTap: () {
                    paidAsDialog(context);
                  },
                  child: textFieldContainer(
                    text: "Amount Received As",
                    icon: Icons.payments_outlined,
                  ),
                ),
                const ReusableTextLabel(text: "Sale Description"),
                DescriptionTextFieldContainer(
                  hintText: "Enter ...",
                  controller: TextEditingController(),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                const ReusableInputTextLabel(
                  text: "Total Sale: 10,000.00  PKR",
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

  // Sale Method Dialog
  void saleMethodDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Add Sale
              saleMethodRow("Daily Sale", Icons.point_of_sale),
              const Divider(),

              // Select Existing Customers
              selectExistingCustomersRow(context),
              const Divider(),

              // Add New Customer/Company Dialog
              addNewCustomerRow(context),
            ],
          ),
        );
      },
    );
  }

  // Add New Customer Company Dialog
  void addNewCustomerDialogCompany(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: whiteColor,
          content: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: CustomTextWidget(
                        text: "New Company/Customer",
                        color: darkBlueColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Divider(),
                    const SizedBox(height: 8),
                    const ReusableTextLabel(
                      text: "Customer Id",
                    ),
                    textFormFieldContainer(text: "125481"),
                    const ReusableTextLabel(
                      text: "Organization Number",
                    ),
                    textFormFieldContainer(text: "200000"),
                    const ReusableTextLabel(
                      text: "Company Name",
                    ),
                    textFormFieldContainer(text: "ABC Ltd"),
                    const ReusableTextLabel(
                      text: "Company Address",
                    ),
                    textFormFieldContainer(
                        text: "731 Wrangler Ave.Bronx, NY 10469"),
                    const ReusableTextLabel(
                      text: "Post No #",
                    ),
                    textFormFieldContainer(text: "125481"),
                    const ReusableTextLabel(
                      text: "Contact No#",
                    ),
                    textFormFieldContainer(text: "+92123456789"),
                    const ReusableTextLabel(
                      text: "Email",
                    ),
                    textFormFieldContainer(text: "abc@gmail.com"),
                    const ReusableTextLabel(
                      text: "Website",
                    ),
                    textFormFieldContainer(text: "abc.com"),
                    const ReusableTextLabel(
                      text: "City",
                    ),
                    textFormFieldContainer(text: "Lahore"),
                    const ReusableTextLabel(
                      text: "Country",
                    ),
                    textFormFieldContainer(text: "Pak"),
                    const SizedBox(
                      height: 8,
                    ),
                    mainButton(
                      text: 'Add ',
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  // Select From Existing Supplier Dialog
  void selectFromExistingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: whiteColor,
          content: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.width * 0.99,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: CustomTextWidget(
                      text: "Select Company/Customer",
                      color: darkBlueColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Divider(),
                  const SizedBox(height: 8),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: hintLightGrayColor,
                    ),
                    child: SearchBar(
                      elevation: const MaterialStatePropertyAll(0),
                      padding: const MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 4, vertical: 4)),
                      backgroundColor:
                          const MaterialStatePropertyAll(hintLightGrayColor),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                      hintText: "Search Companies/Customers",
                      hintStyle: const MaterialStatePropertyAll(TextStyle(
                        color: hintLightGrayColor,
                        fontSize: 12,
                      )),
                      leading: const Icon(
                        Icons.search,
                        color: hintLightGrayColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return const InfoContainer(
                          title: 'ABC LTD',
                          email: 'abc@gmail.com',
                          phoneNumber: '+923123456987',
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // Helper method for Sale Method Dialog
  Widget saleMethodRow(String text, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          color: darkBlueColor,
        ),
        const SizedBox(
          width: 10,
        ),
        CustomTextWidget(
          text: text,
          color: inputLabelTextFieldContainerColor,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }

  // Helper method for Sale Method Dialog
  Widget selectExistingCustomersRow(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        selectFromExistingDialog(context);
      },
      child: const Row(
        children: [
          Icon(
            Icons.apartment,
            color: darkBlueColor,
          ),
          SizedBox(
            width: 10,
          ),
          CustomTextWidget(
            text: "Select From Existing Customers",
            color: inputLabelTextFieldContainerColor,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }

  // Helper method for Sale Method Dialog
  Widget addNewCustomerRow(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        addNewCustomerDialogCompany(context);
      },
      child: const Row(
        children: [
          Icon(
            Icons.domain,
            color: darkBlueColor,
          ),
          SizedBox(
            width: 10,
          ),
          CustomTextWidget(
            text: "Add New Customer/Company",
            color: inputLabelTextFieldContainerColor,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}

// paidas dialog
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
                const ReusableTextLabel(
                  text: "Cash",
                ),
                textFormFieldContainer(text: "20000.00"),
                const ReusableTextLabel(
                  text: "Bank",
                ),
                textFormFieldContainer(text: "20000.00"),
                const ReusableTextLabel(
                  text: "Other Source",
                ),
                textFormFieldContainer(text: "10000.00"),
                SizedBox(
                  height: size.height * 0.09,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        // Wrap the first Column with Expanded
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const ReusableTextLabel(
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
                        // Wrap the second Column with Expanded
                        child: Column(
                          children: [
                            const ReusableTextLabel(text: "Select Date"),
                            GestureDetector(
                              onTap: () {},
                              child: textFieldContainer(
                                text: "08-12-2023",
                                icon: Icons.calendar_month_outlined,
                              ),
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
                const ReusableInputTextLabel(
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
