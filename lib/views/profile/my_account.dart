import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/utils/constants.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';
import 'package:snabb_business/widgets/custom_container.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomExpandedAppBar(
        title: "My Account",
      ),
      body: Padding(
          padding: EdgeInsets.all(size.height * 0.02),
          child: Column(children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Positioned(
              bottom: 30.0,
              left: 0.0,
              right: 0.0,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: primaryBlueColor,
                        width: 2.0,
                      ),
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/your_image.png'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
            ),
          ])),
    );
  }
}
