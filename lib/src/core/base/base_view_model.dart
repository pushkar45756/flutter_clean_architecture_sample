import 'package:flutter/material.dart';
import 'package:flutter_template/src/core/base/view_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

abstract class BaseViewModel extends ChangeNotifier implements ViewModel {
  var isLoading = false;

  showErrorToast(msg1) {
    Fluttertoast.showToast(msg: msg1);
  }
}
