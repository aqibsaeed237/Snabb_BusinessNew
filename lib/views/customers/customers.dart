import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/views/customers/update-customer.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';
import 'package:snabb_business/widgets/custom_container.dart';
import 'package:snabb_business/widgets/info_container_existing.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class CustomersScreen extends StatelessWidget {
  const CustomersScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomExpandedAppBar(title: "My Customer"),
      body: Padding(
        padding: EdgeInsets.all(size.height * 0.02),
        child: CustomContainer(
          height: size.height * 0.74,
          color: whiteColor,
          children: [
            buildAddCustomerRow(),
            Divider(color: darkBlueColor),
            SizedBox(height: size.height * 0.01),
            buildSearchBar(),
            SizedBox(height: size.height * 0.01),
            Expanded(child: buildInfoContainerList()),
          ],
        ),
      ),
    );
  }

  Widget buildAddCustomerRow() {
    return Row(
      children: [
        Icon(
          Icons.add,
          color: darkBlueColor,
        ),
        SizedBox(width: 10),
        CustomTextWidget(
          text: "Add Customer",
          color: darkBlueColor,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }

  Widget buildSearchBar() {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 10), // Adjust padding as needed
      child: SearchBar(
        elevation: MaterialStatePropertyAll(0),
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(
              horizontal: 4, vertical: 0), // Vertical padding adjusted
        ),
        backgroundColor: MaterialStatePropertyAll(hintLightGrayColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        hintText: "Search ...",
        hintStyle: MaterialStatePropertyAll(
          TextStyle(color: hintLightGrayColor, fontSize: 12),
        ),
        leading: Icon(Icons.search, color: hintLightGrayColor),
      ),
    );
  }

  Widget buildInfoContainerList() {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return InfoContainer(
            title: 'ABC LTD',
            email: 'abc@gmail.com',
            phoneNumber: '+923123456987',
            icon: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UpdateCustomerScreen()));
            } // Replace with your onTap logic
            );
      },
    );
  }
}
