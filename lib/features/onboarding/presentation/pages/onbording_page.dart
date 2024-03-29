import 'package:flutter/material.dart';
import 'package:montra/core/device/sizes/app_screen_size.dart';
import 'package:montra/utils/constants/color_constants.dart';
import 'package:montra/utils/constants/image_path_constants.dart';
import 'package:montra/utils/constants/text_constants.dart';
import 'package:montra/features/auth/presentation/widgets/custom_button.dart';
import 'package:montra/features/onboarding/presentation/widgets/onboarding_pageview.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorConstants.lightColor100,
        width: ScreenSize.maxWidth(context),
        height: ScreenSize.maxHeight(context),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              // pageview
              SizedBox(
                width: ScreenSize.maxWidth(context),
                height: 540,
                child: PageView(
                  controller: controller,
                  children: const <Widget>[
                    OnboardingPageView(
                        imagePath: ImagePathConstants.onboarding1,
                        title: TextConstants.onboardingTitle1,
                        subtitle: TextConstants.onboardingSubtitle1),
                    OnboardingPageView(
                        imagePath: ImagePathConstants.onboarding2,
                        title: TextConstants.onboardingTitle2,
                        subtitle: TextConstants.onboardingSubtitle2),
                    OnboardingPageView(
                        imagePath: ImagePathConstants.onboarding3,
                        title: TextConstants.onboardingTitle3,
                        subtitle: TextConstants.onboardingSubtitle3)
                  ],
                ),
              ),

              const SizedBox(
                height: 31,
              ),

              // indicator
              SmoothPageIndicator(
                  controller: controller,
                  onDotClicked: (index) => controller.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease),
                  count: 3,
                  effect: const ScrollingDotsEffect(
                      spacing: 15,
                      activeDotScale: 2,
                      dotHeight: 8,
                      dotWidth: 8,
                      activeDotColor: ColorConstants.violetColor100,
                      dotColor: ColorConstants.violetColor50)),

              const SizedBox(
                height: 33,
              ),

              //signup button
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: CustomButton(
                    text: TextConstants.authSignUp,
                    textColor: ColorConstants.lightColor80,
                    backgroundColor: ColorConstants.violetColor100,
                    onPressed: _signUpUser),
              ),
              const SizedBox(
                height: 16,
              ),

              //login button
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: CustomButton(
                    text: TextConstants.authLogin,
                    textColor: ColorConstants.violetColor100,
                    backgroundColor: ColorConstants.violetColor50,
                    onPressed: _loginUser),
              ),

              const SizedBox(
                height: 16,
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void _signUpUser() {
    Navigator.pushNamed(context, '/signup');
  }

  void _loginUser() {
    Navigator.pushNamed(context, '/login');
  }
}
