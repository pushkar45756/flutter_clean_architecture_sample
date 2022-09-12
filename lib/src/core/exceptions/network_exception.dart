import 'package:flutter_template/src/core/exceptions/base_exception.dart';

class NetworkException extends BaseException {
  NetworkException(String message) : super(message: message);
}
