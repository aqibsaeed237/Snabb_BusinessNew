import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/utils/constants.dart';
import 'package:snabb_business/views/profile/my_account.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';
import 'package:snabb_business/widgets/custom_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomExpandedAppBar(
        title: "Profile",
      ),
      body: Padding(
        padding: EdgeInsets.all(size.height * 0.02),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  bottom: 130,
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: primaryBlueColor, // Add the desired border color
                        width: 2.0, // Add the desired border width
                      ),
                      image: const DecorationImage(
                        image: AssetImage(
                            addExpenseImage), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 40), // Adjust the top padding
                  child: CustomContainer(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Text(
                        "ABC LTD",
                        style: GoogleFonts.poppins(
                          color: hintLightGrayColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        "ABC LTD",
                        style: GoogleFonts.poppins(
                          color: hintLightGrayColor,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Container(
                        height: 32,
                        width: 149,
                        decoration: BoxDecoration(
                            color: saleGreenColor,
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: Text(
                            "Verified",
                            style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyAccountScreen()));
              },
              child: CustomListItem(
                icon: Icons.person,
                iconColor: primaryBlueColor,
                title: 'My Account',
              ),
            ),
            CustomListItem(
              assetImage: SellIcon,
              iconColor: saleGreenColor,
              title: 'Add Sale',
            ),
            CustomListItem(
              assetImage: BuyIcon,
              iconColor: primaryBlueColor,
              title: 'Add Purchase',
            ),
            CustomListItem(
              assetImage: ExpenseIcon,
              iconColor: expenseRedColor,
              title: 'Add Expense',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final String? assetImage;
  final String title;

  const CustomListItem({
    Key? key,
    this.icon,
    this.iconColor,
    this.assetImage,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: icon != null
              ? Icon(
                  icon,
                  color: iconColor,
                )
              : Image.asset(
                  assetImage!,
                  color: iconColor,
                ),
          title: Text(
            title,
            style: kHintStyle,
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: hintLightGrayColor,
          ),
        ),
        const Divider(),
      ],
    );
  }
}
