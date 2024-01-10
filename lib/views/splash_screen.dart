import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/views/homeScreen/dash_board.dart';
import 'package:snabb_business/views/onboarding_screen/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                LogoIcon,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text('Snabb Business',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w800)),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.06,
              ),
              Center(
                child: LoadingAnimationWidget.hexagonDots(
                  color: darkBlueColor,
                  size: 40,
                ),
              )
            ],
          ),
        ));
  }
}
