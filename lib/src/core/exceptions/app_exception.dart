import 'package:flutter_template/src/core/exceptions/base_exception.dart';

class AppException extends BaseException {
  AppException({
    String message = "",
  }) : super(message: message);
}
