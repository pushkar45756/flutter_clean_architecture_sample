// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_template/src/core/values/app_colors.dart';

class LoginButton extends StatelessWidget {
  double width = 0;
  String? title;
  Function? onClick;
  LoginButton({Key? key, this.title, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        onClick!();
      },
      child: Container(
        width: width,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.blue,
            style: BorderStyle.solid,
            width: 1.0,
          ),
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          "$title",
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
