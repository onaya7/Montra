import 'package:flutter/material.dart';
import 'package:montra/app/screen_size.dart';
import 'package:montra/core/constants/color_constants.dart';
import 'package:montra/core/constants/text_constants.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: ScreenSize.maxWidth(context),
            height: ScreenSize.maxHeight(context),
            color: ColorConstants.violetColor100,
            child: Center(
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width: ScreenSize.maxWidth(context),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        TextConstants.splashTitle,
                        style: TextStyle(
                            color: ColorConstants.lightColor100,
                            fontSize: 56,
                            height: 0,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        height: 3,
                        decoration: BoxDecoration(
                            color: ColorConstants.lightColor100,
                            borderRadius: BorderRadius.circular(5)),
                      )
                    ]),
              ),
            )));
  }
}
