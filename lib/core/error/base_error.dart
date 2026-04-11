
import 'package:product_clean_architecture/core/error/handler_exception.dart';

class BaseError {
  static String handleException(Exception exception) {
    return ErrorHandler.handle(exception);
  }
}
