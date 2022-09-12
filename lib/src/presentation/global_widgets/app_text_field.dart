import 'package:flutter/material.dart';
import 'package:flutter_template/src/core/values/app_colors.dart';

// ignore: must_be_immutable
class AppTextField extends StatelessWidget {
  double width = 0;
  String? hintText;
  TextInputType? textInputType;
  AppTextField(this.hintText, this.textInputType, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return TextField(
      cursorColor: AppColors.blue,
      keyboardType: textInputType,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.blue),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        hintText: '$hintText',
      ),
    );
  }
}
