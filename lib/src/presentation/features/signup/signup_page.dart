import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/src/core/values/app_colors.dart';
import 'package:flutter_template/src/core/values/app_strings.dart';
import 'package:flutter_template/src/presentation/di/view_model_provider.dart';

import 'package:flutter_template/src/presentation/features/login/app_button.dart';
import 'package:flutter_template/src/presentation/global_widgets/app_text.dart';
import 'package:flutter_template/src/presentation/global_widgets/app_text_field.dart';

import 'signup_viewmodel.dart';

class SignupPage extends ConsumerStatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage> {
  double height = 0.0;
  double width = 0.0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(width * 0.05),
            width: width,
            child: Column(
              children: [
                SizedBox(height: height * 0.06),
                AppText(),
                SizedBox(height: height * 0.12),
                AppTextField(AppStrings.phone, TextInputType.phone),
                const SizedBox(height: 20),
                AppTextField(AppStrings.pin, TextInputType.phone),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (v) {}),
                        const Text(AppStrings.remember,
                            style: TextStyle(color: Colors.black, fontSize: 14))
                      ],
                    ),
                    const Text(AppStrings.forgot,
                        style: TextStyle(color: AppColors.blue, fontSize: 14))
                  ],
                ),
                const SizedBox(height: 20),
                LoginButton(
                  title: AppStrings.signUp,
                  onClick: () {
                    ref.read(signupViewModelProvider).doSignup(
                        "pushkar@yopmaill.c1om", "11123456", "Pushkar1 Srii");
                  },
                ),
                const SizedBox(height: 20),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: AppStrings.account,
                      style: TextStyle(
                          color: Colors.black, fontSize: width * 0.04)),
                  TextSpan(
                      text: AppStrings.signup,
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      style: TextStyle(
                          color: AppColors.blue, fontSize: width * 0.04)),
                ])),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
