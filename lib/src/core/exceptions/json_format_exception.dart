import 'package:flutter_template/src/core/exceptions/base_exception.dart';

class JsonFormatException extends BaseException {
  JsonFormatException(String message) : super(message: message);
}
