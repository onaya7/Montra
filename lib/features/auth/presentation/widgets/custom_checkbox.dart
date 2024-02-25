import 'package:flutter/material.dart';
import 'package:montra/utils/constants/color_constants.dart';

class CustomCheckBox extends StatelessWidget {
  final bool value;
  final void Function(bool?)? onChanged;

  const CustomCheckBox({
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 24,
        width: 24,
        child: Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: ColorConstants.violetColor100,
          checkColor: ColorConstants.lightColor100,
          side: const BorderSide(
              width: 1.5, color: ColorConstants.violetColor100),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ));
  }
}
