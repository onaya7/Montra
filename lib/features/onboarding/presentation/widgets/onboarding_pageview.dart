import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:montra/app/screen_size.dart';
import 'package:montra/core/constants/color_constants.dart';

class OnboardingPageView extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  const OnboardingPageView({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // image
        Padding(
          padding: const EdgeInsets.only(left: 31, top: 32, right: 32),
          child: Container(
            alignment: Alignment.center,
            height: 312,
            width: ScreenSize.maxWidth(context),
            child: SvgPicture.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(
          height: 41,
        ),
        // onboardingtitle
        Padding(
          padding: const EdgeInsets.only(
            left: 49,
            right: 49,
          ),
          child: SizedBox(
            width: 277,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
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
        Padding(
          padding: const EdgeInsets.only(left: 51, right: 52),
          child: SizedBox(
            width: 272,
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: ColorConstants.lightColor20,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
