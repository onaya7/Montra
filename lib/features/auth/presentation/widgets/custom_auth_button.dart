
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:montra/app/screen_size.dart';
import 'package:montra/core/constants/color_constants.dart';
import 'package:montra/core/constants/image_path_constants.dart';
import 'package:montra/core/constants/text_constants.dart';

class CustomAuthButton extends StatelessWidget {
  final void Function()? onPressed;
  const CustomAuthButton({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: ScreenSize.maxWidth(context),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          backgroundColor:
              MaterialStateProperty.all<Color>(ColorConstants.lightColor100),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  side: const BorderSide(
                      width: 1, color: ColorConstants.lightColor60),
                  borderRadius: BorderRadius.circular(16))),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(ImagePathConstants.google),
            const SizedBox(
              width: 10,
            ),
            const Text(
              TextConstants.authtext4,
              style: TextStyle(
                  color: ColorConstants.darkColor50,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
