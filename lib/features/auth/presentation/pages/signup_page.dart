import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:montra/core/constants/color_constants.dart';
import 'package:montra/core/constants/image_path_constants.dart';
import 'package:montra/core/constants/text_constants.dart';
import 'package:montra/core/utils/validations.dart';
import 'package:montra/features/auth/presentation/widgets/custom_account.dart';
import 'package:montra/features/auth/presentation/widgets/custom_auth_button.dart';
import 'package:montra/features/auth/presentation/widgets/custom_button.dart';
import 'package:montra/features/auth/presentation/widgets/custom_form_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isChecked = false;

  late FocusNode _nameFocusNode;
  late FocusNode _emailFocusNode;
  late FocusNode _passwordFocusNode;

  @override
  void initState() {
    super.initState();
    _nameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void checkbox(bool? value) {
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              icon: SvgPicture.asset(
                ImagePathConstants.arrowLeft,
                fit: BoxFit.contain,
                height: 32,
                width: 32,
              ),
              onPressed: () => Navigator.pop(context)),
          title: const Text(
            TextConstants.authSignUp,
            style: TextStyle(
                color: ColorConstants.darkColor50,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
              color: ColorConstants.lightColor100,
              padding: const EdgeInsets.only(
                  left: 16, top: 72, right: 16, bottom: 126),
              child: Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CustomFormField(
                          controller: _nameController,
                          currentFocus: _nameFocusNode,
                          nextFocus: _emailFocusNode,
                          label: 'Name',
                          obscureText: false,
                          action: TextInputAction.next,
                          validator: (value) =>
                              Validation.validateEmail(value)),
                      const SizedBox(
                        height: 24,
                      ),
                      CustomFormField(
                          controller: _emailController,
                          currentFocus: _emailFocusNode,
                          nextFocus: _passwordFocusNode,
                          label: 'Email',
                          obscureText: false,
                          action: TextInputAction.next,
                          validator: (value) =>
                              Validation.validateEmail(value)),
                      const SizedBox(height: 24),
                      CustomFormField(
                          controller: _passwordController,
                          currentFocus: _passwordFocusNode,
                          label: 'Password',
                          obscureText: true,
                          action: TextInputAction.done,
                          isPasswordField: true,
                          validator: (value) =>
                              Validation.validateEmail(value)),
                      const SizedBox(
                        height: 17,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                              height: 24,
                              width: 24,
                              child: Checkbox(
                                value: _isChecked,
                                onChanged: checkbox,
                                activeColor: ColorConstants.violetColor100,
                                checkColor: ColorConstants.lightColor100,
                                side: const BorderSide(
                                    width: 1.5,
                                    color: ColorConstants.violetColor100),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const SizedBox(
                            width: 291,
                            child: Text.rich(
                              TextSpan(children: [
                                TextSpan(
                                  text: TextConstants.authtext1,
                                  style: TextStyle(
                                    color: ColorConstants.darkColor100,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: TextConstants.authtext2,
                                  style: TextStyle(
                                    color: ColorConstants.violetColor100,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 27,
                      ),
                      CustomButton(
                          text: TextConstants.authSignUp,
                          textColor: ColorConstants.lightColor80,
                          backgroundColor: ColorConstants.violetColor100,
                          onPressed: onPressed),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        TextConstants.authtext3,
                        style: TextStyle(
                            color: ColorConstants.lightColor20,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      CustomAuthButton(onPressed: onPressed),
                      const SizedBox(
                        height: 19,
                      ),
                      CustomAccount(
                          text: TextConstants.authtext5,
                          navigateTo: TextConstants.authLogin,
                          onTap: () => Navigator.pushNamed(context, '/login')),
                    ]),
              )),
        ));
  }
}