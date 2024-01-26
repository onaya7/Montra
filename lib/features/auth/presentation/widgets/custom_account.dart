import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:montra/core/constants/color_constants.dart';

class CustomAccount extends StatelessWidget {
  final String text;
  final String navigateTo;
  final void Function()? onTap;

  const CustomAccount({
    required this.text,
    required this.navigateTo,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      child: Text.rich(
        TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: text,
              style: const TextStyle(
                color: ColorConstants.lightColor20,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: navigateTo,
              style: const TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: ColorConstants.violetColor100,
                color: ColorConstants.violetColor100,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
