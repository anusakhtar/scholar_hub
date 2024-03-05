import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:scholarship_hub/Controllers/LoginController/login_controller.dart';
import 'package:scholarship_hub/res/AppAssets/app_assets.dart';
import 'package:scholarship_hub/res/CommonWidgets/CustomButton/custom_button.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';
import '../../res/AppColors/app_colors.dart';
import '../../res/CommonWidgets/AppText/app_text.dart';
import '../../res/CommonWidgets/CustomTextFormField/custom_text_form_field.dart';
import '../../res/routes/route_name.dart';
import 'Widget/IconButton/icon_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: context.customTheme.bgcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(size.width * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.login,
                  width: size.width * 0.7,
                  height: size.height * 0.27,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: size.height * 0.03),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText(
                    text: 'Welcome Back!',
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.06,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                const CustomTextFormField(
                  labelText: 'Email',
                  hintText: 'Enter your email ID',
                  prefixIcon: Icons.email_outlined,
                ),
                SizedBox(height: size.height * 0.03),
                Obx(
                      () => CustomTextFormField(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    prefixIcon: Icons.lock_outline,
                    suffixIcon: loginController.obscureText.value
                        ? Icons.visibility
                        : Icons.visibility_off,
                    obscureText: loginController.obscureText.value,
                    onTap: loginController.togglePasswordVisibility,
                  ),
                ),
                SizedBox(height: size.height * 0.015),
                Row(
                  children: [
                    Obx(
                          () => GestureDetector(
                        onTap: () {
                          loginController.check();
                        },
                        child: Container(
                          width: size.width * 0.036,
                          height: size.height * 0.017,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(color: Colors.white),
                            color: loginController.isChecked.value
                                ? AppColors.primaryColor
                                : Colors.transparent,
                          ),
                          child: loginController.isChecked.value
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: size.height * 0.013,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * 0.02),
                    const AppText(text: 'Remember me', fontSize: 12),
                    const Spacer(),
                    const AppText(text: 'Forget password?', fontSize: 12),
                  ],
                ),
                SizedBox(height: size.height * 0.04),
                CustomButton(
                  textColor: Colors.white,
                  label: 'Log in',
                  onTap: () {
                    Get.toNamed(RouteName.welcomeScreen);
                  },
                ),
                SizedBox(height: size.height * 0.05),
                const Row(children: <Widget>[
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: AppText(text: "Or continue with"),
                  ),
                  Expanded(child: Divider()),
                ]),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const IconButtons(
                      icon: AppAssets.googleIcon,
                    ),
                    SizedBox(width: size.width * 0.05),
                    const IconButtons(
                      icon: AppAssets.facebookIcon,
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.04),
                RichText(
                  text: TextSpan(
                    text: "Don’t have an account? ",
                    style: TextStyle(
                      color: context.customTheme.textColor,
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(RouteName.signupScreen);
                          },
                        text: 'sign up',
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

