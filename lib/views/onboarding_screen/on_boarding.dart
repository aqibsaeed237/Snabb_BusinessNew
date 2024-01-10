import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:snabb_business/utils/asset_constants.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/utils/constants.dart';
import 'package:snabb_business/utils/custom_button.dart';
import 'package:snabb_business/views/navbar_screen.dart';
import 'package:snabb_business/views/signup/signup.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      title: 'Welcome to Snabb Business',
      description: 'Enter the realm of financial clarity and simplicity.',
      image: onBoardingOne,
    ),
    OnboardingItem(
      title: 'Tracking Made Easy',
      description: 'Effortlessly monitor real-time profits and losses.',
      image: onBoardingTwo,
    ),
    OnboardingItem(
      title: 'Empowerment Awaits',
      description: 'Seize control for a prosperous business journey!',
      image: onBoardingThree,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(size.height * 0.01),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    _pageController.jumpToPage(onboardingItems.length - 1);
                  },
                  child: GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen())),
                    child: Text('Skip >>', style: kHintStyle),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardingItems.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return OnboardingItemWidget(onboardingItems[index]);
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Scrollable(
                      axisDirection: AxisDirection.left,
                      viewportBuilder: (context, position) =>
                          smooth_page_indicator.SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        axisDirection: Axis.horizontal,
                        onDotClicked: (index) {
                          _pageController.animateToPage(index,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease);
                        },
                        effect: const smooth_page_indicator.ExpandingDotsEffect(
                            expansionFactor: 3,
                            spacing: 4,
                            radius: 14,
                            dotWidth: 8,
                            dotHeight: 10,
                            dotColor: Color(0xFFD9D9D9),
                            activeDotColor: darkBlueColor,
                            paintStyle: PaintingStyle.fill),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.06,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: SizedBox(
                            child: MyButton(
                              callBack: () {
                                if (_currentPage < onboardingItems.length - 1) {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                } else {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const NavBarScreen()),
                                  );
                                }
                              },
                              btnName:
                                  _currentPage == onboardingItems.length - 1
                                      ? 'Get Started'
                                      : 'Next',
                            ),
                          ),

                          // TextButton(
                          //   onPressed: () {
                          //     if (_currentPage < onboardingItems.length - 1) {
                          //       _pageController.nextPage(
                          //         duration: const Duration(milliseconds: 500),
                          //         curve: Curves.ease,
                          //       );
                          //     } else {
                          //       // Get.to(() => const LoginScreen());
                          //     }
                          //   },
                          //   child: Text(
                          //     _currentPage == onboardingItems.length - 1
                          //         ? 'Get Started'
                          //         : 'Next',
                          //     style: GoogleFonts.montserrat(
                          //         color: Colors.amber,
                          //         fontSize: 22.0,
                          //         fontWeight: FontWeight.w500),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingItem {
  final String title;
  final String description;
  final String image;

  OnboardingItem({
    required this.title,
    required this.description,
    required this.image,
  });
}

class OnboardingItemWidget extends StatelessWidget {
  final OnboardingItem item;

  const OnboardingItemWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.01,
        ),
        Image.asset(
          item.image,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Text(item.title, style: kOnboardingTitleStyle),
        SizedBox(
          height: size.height * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
          child: Text(
            item.description,
            style: GoogleFonts.poppins(
              fontSize: 16.0,
              color: blackColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
