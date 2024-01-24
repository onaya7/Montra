import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:montra/app/screen_size.dart';
import 'package:montra/components/custom_button.dart';
import 'package:montra/core/constants/color_constants.dart';
import 'package:montra/core/constants/image_path_constants.dart';
import 'package:montra/core/constants/text_constants.dart';
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
        padding: const EdgeInsets.only(left: 16, right: 16),
        color: ColorConstants.lightColor100,
        width: ScreenSize.maxWidth(context),
        height: ScreenSize.maxHeight(context),
        child: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: PageView(
                    controller: controller,
                    children: const <Widget>[
                      OnboardingScreen1(),
                      OnboardingScreen1(),
                      OnboardingScreen1(),
                    ],
                  ),
                ),

                // indicator
                Padding(
                  padding: const EdgeInsets.only(top: 31, bottom: 33),
                  child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const WormEffect(
                          radius: 16,
                          activeDotColor: ColorConstants.violetColor100,
                          dotColor: ColorConstants.violetColor50)),
                ),

                const SizedBox(
                  height: 33,
                ),

                // signup button
                CustomButton(
                    text: TextConstants.authSignUpButton,
                    textColor: ColorConstants.lightColor80,
                    backgroundColor: ColorConstants.violetColor100,
                    onPressed: onPressed),
                const SizedBox(
                  height: 16,
                ),

                //login button
                CustomButton(
                    text: TextConstants.authLoginButton,
                    textColor: ColorConstants.violetColor100,
                    backgroundColor: ColorConstants.violetColor50,
                    onPressed: onPressed)
              ]),
        ),
      ),
    );
  }

  void onPressed() {}
}

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: <Widget>[
          // image
          Padding(
            padding:
                const EdgeInsets.only(left: 31, top: 32, right: 32, bottom: 41),
            child: Container(
              alignment: Alignment.center,
              height: 312,
              width: ScreenSize.maxWidth(context),
              child: SvgPicture.asset(ImagePathConstants.onboarding1),
            ),
          ),

          // onboardingtitle
          const Padding(
            padding: EdgeInsets.only(left: 49, right: 49),
            child: SizedBox(
              width: 277,
              child: Text(
                TextConstants.onboardingTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorConstants.darkColor50,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 17,
          ),

          // onboardingsubtitle
          const Padding(
            padding: EdgeInsets.only(left: 51, right: 52),
            child: SizedBox(
              width: 272,
              child: Text(
                TextConstants.onboardingSubtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorConstants.lightColor20,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
