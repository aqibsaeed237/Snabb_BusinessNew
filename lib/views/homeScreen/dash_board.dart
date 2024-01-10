import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/views/drawer.dart';

import 'package:snabb_business/widgets/home_bar_chat.dart';

class DashBoard extends StatelessWidget {
  DashBoard({Key? key}) : super(key: key);

  final categorizeList = ['Weekly', 'Monthly', 'Yearly'];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: primaryBlueColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.height * 0.02,
                            vertical: size.height * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Open the drawer when the menu icon is tapped
                              },
                              child: Icon(
                                Icons.menu,
                                color: whiteColor,
                                size: 36,
                              ),
                            ),
                            Icon(
                              Icons.notifications_none_outlined,
                              color: whiteColor,
                              size: 36,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text('Welcome back',
                          style: GoogleFonts.poppins(
                              fontSize: 30,
                              color: whiteColor,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'ABC Corporation',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'Balance: ',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: hintLightGrayColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text: '  188,676.00',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: darkBlueColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text: ' USD',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: hintLightGrayColor,
                                    fontWeight: FontWeight.w500),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: darkBlueColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 8,
                            width: 10,
                            decoration: BoxDecoration(
                              color: saleGreenColor,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Text(
                            'Sale',
                            style: GoogleFonts.poppins(
                              fontSize: 8,
                              color: hintLightGrayColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            height: 8,
                            width: 10,
                            decoration: BoxDecoration(
                              color: expenseRedColor,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Text(
                            'Expense',
                            style: GoogleFonts.poppins(
                              fontSize: 8,
                              color: hintLightGrayColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            height: 8,
                            width: 10,
                            decoration: BoxDecoration(
                              color: darkBlueColor,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Text(
                            'Purchase',
                            style: GoogleFonts.poppins(
                              fontSize: 8,
                              color: hintLightGrayColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.243,
                        width: size.width * 0.9,
                        child: const MonthlyBarChart(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
