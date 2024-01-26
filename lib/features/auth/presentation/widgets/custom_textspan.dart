import 'package:flutter/material.dart';
import 'package:montra/core/constants/color_constants.dart';

class CustomTextSpan extends StatelessWidget {
  final String text1;
  final String text2;
  const CustomTextSpan({
    required this.text1,
    required this.text2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 291,
      child: Text.rich(
        TextSpan(children: [
          TextSpan(
            text: text1,
            style: const TextStyle(
              color: ColorConstants.darkColor100,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: text2,
            style: const TextStyle(
              color: ColorConstants.violetColor100,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ]),
      ),
    );
  }
}
