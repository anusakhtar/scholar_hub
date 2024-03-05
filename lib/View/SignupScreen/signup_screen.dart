import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scholarship_hub/res/AppColors/app_colors.dart';
import 'package:scholarship_hub/res/CommonWidgets/AppText/app_text.dart';
import 'package:scholarship_hub/res/CommonWidgets/CustomButton/custom_button.dart';
import 'package:scholarship_hub/res/CommonWidgets/CustomTextFormField/custom_text_form_field.dart';
import 'package:scholarship_hub/res/MyTheme/theme_extension.dart';

import '../../Controllers/SignupController/signup_controller.dart';
import '../../res/routes/route_name.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final SignupController signupController = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.customTheme.bgcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppText(
                    text: 'Create your account',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextFormField(
                    labelText: 'First name',
                    hintText: 'Enter your first name',
                    prefixIcon: Icons.person_2_outlined,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextFormField(
                    labelText: 'Last name',
                    hintText: 'Enter your last name',
                    prefixIcon: Icons.person_2_outlined,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextFormField(
                    labelText: 'Mobile number',
                    hintText: 'Enter 10 digit mobile Number',
                    prefixIcon: Icons.phone_outlined,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextFormField(
                    labelText: 'Email ID',
                    hintText: 'Enter your email ID',
                    prefixIcon: Icons.email_outlined,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => CustomTextFormField(
                      prefixIcon: Icons.lock_outline,
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      suffixIcon: signupController.obscureText1.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      obscureText: signupController.obscureText1.value,
                      onTap: signupController.togglePasswordVisibility1,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Obx(
                    () => CustomTextFormField(
                      prefixIcon: Icons.lock_outline,
                      labelText: 'Confirm Password',
                      hintText: 'Re-enter your password',
                      suffixIcon: signupController.obscureText2.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      obscureText: signupController.obscureText2.value,
                      onTap: signupController.togglePasswordVisibility2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                        text: "By clicking Sign Up, you agree to our ",
                        style: TextStyle(
                          color: context.customTheme.textColor,
                            fontSize: 12, fontWeight: FontWeight.w400),
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'Terms of Service \n',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppColors.primaryColor),
                          ),
                          TextSpan(
                            text: 'and ',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppColors.primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomButton(
                    textColor: Colors.white,
                    label: 'Sign up',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                        color: context.customTheme.textColor,
                          fontSize: 12, fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(RouteName.loginScreen);
                              },
                            text: 'sign in',
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppColors.primaryColor)),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
