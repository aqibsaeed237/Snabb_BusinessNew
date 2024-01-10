import 'package:flutter/material.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/views/addDataScreen/addSaleScreen.dart';
import 'package:snabb_business/views/addDataScreen/add_expense_screen.dart';
import 'package:snabb_business/views/customers/customers.dart';
import 'package:snabb_business/widgets/add_custom_container.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class SelectToAddDataScreen extends StatelessWidget {
  const SelectToAddDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              const ListTile(
                title: CustomTextWidget(
                    text: "Select to add \ndata ",
                    color: darkBlueColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              // SizedBox(
              //   height: size.height * 0.01,
              // ),
              const ListTile(
                title: CustomTextWidget(
                    text:
                        "Select an option to add your daily sale, purchases and expenses.",
                    color: hintLightGrayColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),

              SizedBox(
                height: size.height * 0.03,
              ),

              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        (MaterialPageRoute(
                            builder: (context) => const AddSaleScreen())));
                  },
                  child: CustomImageContainer(
                      image: addSaleImage, text: "Add Sale")),
              SizedBox(
                height: size.height * 0.02,
              ),
              GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>  AddPurchaseScreen()));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CustomersScreen()));

                    //         builder: (context) => AddPurchaseScreen()));
                  },
                  child: const CustomImageContainer(
                      image: addPurchaseImage, text: "Add Purchase")),
              SizedBox(
                height: size.height * 0.02,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddExpenseScreen()));
                  },
                  child: const CustomImageContainer(
                      image: addExpenseImage, text: "Add Expense")),
            ],
          ),
        ),
      ),
    );
  }
}
