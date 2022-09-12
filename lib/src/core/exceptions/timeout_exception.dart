import 'package:flutter_template/src/core/exceptions/base_exception.dart';

class TimeoutException extends BaseException {
  TimeoutException(String message) : super(message: message);
}
