import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:montra/core/constants/color_constants.dart';
import 'package:montra/core/constants/image_path_constants.dart';
import 'package:montra/features/auth/controller/auth_controller.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode currentFocus;
  final FocusNode? nextFocus;
  final String label;
  final bool obscureText;
  final TextInputAction action;
  final bool isPasswordField;
  final Widget? iconbutton;
  final String? Function(String?)? validator;

  const CustomFormField(
      {required this.controller,
      required this.currentFocus,
      this.nextFocus,
      required this.label,
      required this.obscureText,
      required this.action,
      this.isPasswordField = false,
      this.iconbutton,
      required this.validator,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      textInputAction: action,
      focusNode: currentFocus,
      onEditingComplete: () {
        AuthController.shiftFocus(context, currentFocus, nextFocus);
      },
      decoration: InputDecoration(
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 1.50),
            borderRadius: BorderRadius.circular(16),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 1.50),
            borderRadius: BorderRadius.circular(16),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          label: Text(
            label,
          ),
          labelStyle: const TextStyle(
            color: ColorConstants.lightColor20,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: ColorConstants.lightColor60, width: 1.50),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: ColorConstants.violetColor100, width: 1.50),
            borderRadius: BorderRadius.circular(16),
          ),
          suffixIcon: isPasswordField
              ? IconButton(
                  icon: SvgPicture.asset(
                    ImagePathConstants.eyeShow,
                    fit: BoxFit.contain,
                    height: 32,
                    width: 32,
                    colorFilter: const ColorFilter.mode(
                        ColorConstants.lightColor20, BlendMode.srcIn),
                  ),
                  onPressed: () => debugPrint('Passwordvisibility icon'))
              : null),
      validator: validator,
    );
  }
}
