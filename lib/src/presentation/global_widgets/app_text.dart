// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_template/src/core/values/app_colors.dart';
import 'package:flutter_template/src/core/values/app_strings.dart';

class AppText extends StatelessWidget {
  double width = 0;
  String? title;
  AppText({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: AppStrings.global,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.blue,
              fontSize: width * 0.07,
            ),
          ),
          TextSpan(
            text: AppStrings.finance.toUpperCase(),
            style: TextStyle(
              fontStyle: FontStyle.normal,
              color: Colors.black,
              fontSize: width * 0.07,
            ),
          ),
        ],
      ),
    );
  }
}
