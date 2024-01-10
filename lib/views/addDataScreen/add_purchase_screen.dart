import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';
import 'package:snabb_business/widgets/custom_button.dart';
import 'package:snabb_business/widgets/custom_container.dart';
import 'package:snabb_business/widgets/custom_textfield.dart';
import 'package:snabb_business/widgets/description_field_container.dart';
import 'package:snabb_business/widgets/info_container_existing.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class AddPurchaseScreen extends StatelessWidget {
  const AddPurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomExpandedAppBar(title: "Add purchase"),
      body: Padding(
        padding: EdgeInsets.all(size.height * 0.02),
        child: CustomContainer(
          height: size.height * 0.7,
          color: whiteColor,
          children: [
            CustomTextWidget(
              text: "Supplier Details",
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
                ReusableTextLabel(text: "Select Date"),
                GestureDetector(
                  onTap: () {},
                  child: textFieldContainer(
                    text: "08-12-2023",
                    icon: Icons.calendar_month_outlined,
                  ),
                ),
                ReusableTextLabel(text: "Select Supplier"),
                InkWell(
                  onTap: () {
                    selectSupplierDialog(context);
                  },
                  child: textFieldContainer(
                    text: "Supplier Name",
                    icon: Icons.sell_outlined,
                  ),
                ),
                ReusableTextLabel(text: "Amount Paid As"),
                InkWell(
                  onTap: () {
                    paidAsDialog(context);
                  },
                  child: textFieldContainer(
                    text: "Amount Paid As",
                    icon: Icons.payments_outlined,
                  ),
                ),
                ReusableTextLabel(text: "Purchase Description"),
                DescriptionTextFieldContainer(
                  hintText: "Enter  description...",
                  controller: TextEditingController(),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                ReusableInputTextLabel(
                  text: "Total Purchase: 10,000.00  PKR",
                ),
                ReusableInputTextLabel(
                  text: 'Remaining Balance: 10,000.00  PKR',
                ),
                ReusableTextLabel(text: "Add Media"),
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
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              color: darkBlueColor,
                            ),
                            SizedBox(
                              height: size.height * 0.005,
                            ),
                            CustomTextWidget(
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
                            Icon(
                              Icons.drive_folder_upload_outlined,
                              color: darkBlueColor,
                            ),
                            SizedBox(
                              height: size.height * 0.005,
                            ),
                            CustomTextWidget(
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

  // select SupplierDialog Dialog
  void selectSupplierDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Select Existing Supplier
              selectExistingSupplierRow(context),
              Divider(),

              // Add New Customer/Company Dialog
              addNewSupplierRow(context),
            ],
          ),
        );
      },
    );
  }

  // Add New Supplier Company Dialog
  void addNewSupplierDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: whiteColor,
          content: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Padding(
              padding: EdgeInsets.all(4),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CustomTextWidget(
                        text: "New Supplier",
                        color: darkBlueColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 8),
                    ReusableTextLabel(
                      text: "Supplier Name",
                    ),
                    textFormFieldContainer(text: "David Caner"),
                    ReusableTextLabel(
                      text: "Organization Number #",
                    ),
                    textFormFieldContainer(text: "545427"),
                    ReusableTextLabel(
                      text: "Reference Name",
                    ),
                    textFormFieldContainer(text: "John"),
                    ReusableTextLabel(
                      text: "Organization Address",
                    ),
                    textFormFieldContainer(
                        text: "731 Wrangler Ave.Bronx, NY 10469"),
                    ReusableTextLabel(
                      text: "Post No #",
                    ),
                    textFormFieldContainer(text: "125481"),
                    ReusableTextLabel(
                      text: "Contact No#",
                    ),
                    textFormFieldContainer(text: "+92123456789"),
                    ReusableTextLabel(
                      text: "Email",
                    ),
                    textFormFieldContainer(text: "abc@gmail.com"),
                    ReusableTextLabel(
                      text: "Website",
                    ),
                    textFormFieldContainer(text: "abc.com"),
                    ReusableTextLabel(
                      text: "City",
                    ),
                    textFormFieldContainer(text: "Lahore"),
                    ReusableTextLabel(
                      text: "Country",
                    ),
                    textFormFieldContainer(text: "Pak"),
                    SizedBox(
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
              padding: EdgeInsets.all(4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CustomTextWidget(
                      text: "Select Supplier",
                      color: darkBlueColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Divider(),
                  SizedBox(height: 8),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: hintLightGrayColor,
                    ),
                    child: SearchBar(
                      elevation: MaterialStatePropertyAll(0),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 4, vertical: 4)),
                      backgroundColor:
                          MaterialStatePropertyAll(hintLightGrayColor),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                      hintText: "Search Supplier",
                      hintStyle: MaterialStatePropertyAll(TextStyle(
                        color: hintLightGrayColor,
                        fontSize: 12,
                      )),
                      leading: Icon(
                        Icons.search,
                        color: hintLightGrayColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return InfoContainer(
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

  // Helper method for Supplier Dialog
  Widget selectExistingSupplierRow(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        selectFromExistingDialog(context);
      },
      child: Row(
        children: [
          Icon(
            Icons.apartment,
            color: darkBlueColor,
          ),
          SizedBox(
            width: 10,
          ),
          CustomTextWidget(
            text: "Select From Existing Supplier",
            color: inputLabelTextFieldContainerColor,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }

  // Helper method for Sale Method Dialog
  Widget addNewSupplierRow(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        addNewSupplierDialog(context);
      },
      child: Row(
        children: [
          Icon(
            Icons.domain,
            color: darkBlueColor,
          ),
          SizedBox(
            width: 10,
          ),
          CustomTextWidget(
            text: "Add New Supplier",
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
                Center(
                  child: CustomTextWidget(
                    text: "Paid As",
                    color: darkBlueColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Divider(),
                SizedBox(height: 4),
                Align(
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
                        // Wrap the first Column with Expanded
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
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        // Wrap the second Column with Expanded
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
