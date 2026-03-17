
import 'package:productCleanArchitecture/core/error/handler_exception.dart';

class BaseError {
  static String handleException(Exception exception) {
    return ErrorHandler.handle(exception);
  }
}
