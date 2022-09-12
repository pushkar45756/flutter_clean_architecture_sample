import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/src/core/base/base_view_model.dart';

final loginViewModelProvider = ChangeNotifierProvider<LoginViewModel>(
  (ref) => LoginViewModel(),
);

class LoginViewModel extends BaseViewModel {
  getBoredActivityData(context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pop();
    });
  }
}
