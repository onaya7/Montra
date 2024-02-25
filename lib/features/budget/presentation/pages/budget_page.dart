import 'package:flutter/material.dart';
import 'package:montra/app/screen_size.dart';
import 'package:montra/core/constants/color_constants.dart';
import 'package:montra/core/constants/text_constants.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
            width: ScreenSize.maxWidth(context),
            color: ColorConstants.lightColor80,
            child: const Center(
              child: Text(
                TextConstants.budget,
                style: TextStyle(
                  color: ColorConstants.darkColor100,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )));
  }
}
