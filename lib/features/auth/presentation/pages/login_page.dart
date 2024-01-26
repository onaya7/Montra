import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:montra/core/constants/color_constants.dart';
import 'package:montra/core/constants/image_path_constants.dart';
import 'package:montra/core/constants/text_constants.dart';
import 'package:montra/core/utils/validations.dart';
import 'package:montra/features/auth/presentation/widgets/custom_account.dart';
import 'package:montra/features/auth/presentation/widgets/custom_button.dart';
import 'package:montra/features/auth/presentation/widgets/custom_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final bool _isChecked = false;

  late FocusNode _emailFocusNode;
  late FocusNode _passwordFocusNode;

  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
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
            TextConstants.authLogin,
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
                      controller: _emailController,
                      currentFocus: _emailFocusNode,
                      nextFocus: _passwordFocusNode,
                      label: 'Email',
                      obscureText: false,
                      action: TextInputAction.next,
                      validator: (value) => Validation.validateEmail(value)),
                  const SizedBox(height: 24),
                  CustomFormField(
                      controller: _passwordController,
                      currentFocus: _passwordFocusNode,
                      label: 'Password',
                      obscureText: true,
                      action: TextInputAction.done,
                      isPasswordField: true,
                      validator: (value) => Validation.validateEmail(value)),
                  const SizedBox(
                    height: 27,
                  ),
                  CustomButton(
                      text: TextConstants.authLogin,
                      textColor: ColorConstants.lightColor80,
                      backgroundColor: ColorConstants.violetColor100,
                      onPressed: onPressed),
                  const SizedBox(
                    height: 12,
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  CustomAccount(
                      text: TextConstants.authtext8,
                      navigateTo: TextConstants.authSignUp,
                      onTap: () => Navigator.pushNamed(context, '/signup')),
                ]),
              )),
        ));
  }
}
