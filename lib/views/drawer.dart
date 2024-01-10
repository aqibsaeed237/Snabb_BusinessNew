import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snabb_business/provider/dashboard_provider.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/views/About/about_us.dart';
import 'package:snabb_business/views/ContactUs/contact_us.dart';
import 'package:snabb_business/views/setting/setting.dart';
import 'package:snabb_business/views/subscription/subscription_screen.dart';
import 'package:snabb_business/views/suppliers/suppliers.dart';
import 'package:snabb_business/views/customers/customers.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: dashboardProvider,
      builder: (context, child) {
        double slide = dashboardProvider.getDrawerSlide();
        double scale = dashboardProvider.getDrawerScale();

        return SizedBox(
          width: screenWidth * 0.7,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(slide)
              ..scale(scale),
            alignment: Alignment.centerLeft,
            child: Drawer(
              child: Container(
                color: whiteColor,
                child: ListView(
                  children: [
                    DrawerHeader(
                      decoration: const BoxDecoration(
                        color: darkBlueColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: whiteColor,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(addExpenseImage),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'John Doe',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'john.doe@example.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    buildDrawerItem(
                      title: 'Customers',
                      icon: Icons.apartment,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CustomersScreen(),
                          ),
                        );
                      },
                    ),
                    buildDrawerItem(
                      title: 'Suppliers',
                      icon: Icons.storefront,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SuppliersScreen(),
                          ),
                        );
                      },
                    ),
                    buildDrawerItem(
                      title: 'Sales',
                      icon: Image.asset(sellIcon),
                      onTap: () {},
                    ),
                    buildDrawerItem(
                      title: 'Purchase',
                      icon: Icons.shopping_cart,
                      onTap: () {},
                    ),
                    buildDrawerItem(
                      title: 'Expense',
                      icon: Image.asset(ExpenseIcon),
                      onTap: () {},
                    ),
                    buildDrawerItem(
                      title: 'Subscription',
                      icon: Image.asset(SubscriptionIcon),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SubscriptionScreen(),
                          ),
                        );
                      },
                    ),
                    buildDrawerItem(
                      title: 'Setting',
                      icon: Icons.settings_outlined,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SettingScreen(),
                          ),
                        );
                      },
                    ),
                    buildDrawerItem(
                      title: 'About Us',
                      icon: Icons.info_outline,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutUsScreen(),
                          ),
                        );
                      },
                    ),
                    buildDrawerItem(
                      title: 'Contact Us',
                      icon: Icons.call_outlined,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactUsScreen(),
                          ),
                        );
                      },
                    ),
                    buildDrawerItem(
                      title: 'Logout',
                      icon: Icons.logout_outlined,
                      onTap: () {},
                      color: expenseRedColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Center(
                      child: CustomTextWidget(
                        text: "version 1.0.0",
                        color: hintLightGrayColor,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
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

  Widget buildDrawerItem({
    required String title,
    required dynamic icon,
    required void Function() onTap,
    Color? color,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: Row(
          children: [
            if (icon is IconData)
              Icon(icon, color: color ?? hintLightGrayColor),
            if (icon is Widget) icon,
            const SizedBox(width: 16),
            CustomTextWidget(
              fontSize: 14,
              text: title,
              color: hintLightGrayColor,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        onTap: onTap,
        tileColor: Colors.transparent,
        visualDensity: VisualDensity.standard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        hoverColor: Colors.blue.withOpacity(0.1),
      ),
    );
  }
}
