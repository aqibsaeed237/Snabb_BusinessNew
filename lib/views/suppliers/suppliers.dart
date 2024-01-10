import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/views/suppliers/update_supplier.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';
import 'package:snabb_business/widgets/custom_container.dart';
import 'package:snabb_business/widgets/info_container_existing.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class SuppliersScreen extends StatelessWidget {
  const SuppliersScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomExpandedAppBar(
        title: "My supplier",
      ),
      body: Padding(
        padding: EdgeInsets.all(size.height * 0.02),
        child: CustomContainer(
          height: size.height * 0.74,
          color: whiteColor,
          children: [
            buildAddSupplierRow(),
            const Divider(color: darkBlueColor),
            SizedBox(height: size.height * 0.01),
            buildSearchBar(),
            SizedBox(height: size.height * 0.01),
            Expanded(child: buildInfoContainerList()),
          ],
        ),
      ),
    );
  }

  Widget buildAddSupplierRow() {
    return const Row(
      children: [
        Icon(
          Icons.add,
          color: darkBlueColor,
        ),
        SizedBox(width: 10),
        CustomTextWidget(
          text: "Add Supplier",
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
      padding: const EdgeInsets.symmetric(
          horizontal: 10), // Adjust padding as needed
      child: SearchBar(
        elevation: const MaterialStatePropertyAll(0),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(
              horizontal: 4, vertical: 0), // Vertical padding adjusted
        ),
        backgroundColor: const MaterialStatePropertyAll(hintLightGrayColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        hintText: "Search ...",
        hintStyle: const MaterialStatePropertyAll(
          TextStyle(color: hintLightGrayColor, fontSize: 12),
        ),
        leading: const Icon(Icons.search, color: hintLightGrayColor),
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
            icon: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UpdateSuppliercreen()));
            } // Replace with your onTap logic
            );
      },
    );
  }
}
