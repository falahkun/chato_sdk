// coverage:ignore-file
import 'package:chato_sdk/src/core/exceptions/exceptions.dart';
import 'package:dio/dio.dart';

extension DioErrorExtension on DioError {
  ServerException toServerException() {
    switch (type) {
      // TODO(type): Implement error message by your sever error message.
      case DioErrorType.response:
        switch (response?.statusCode) {
          case 401:
            return UnAuthenticationServerException(
              message: getResponseMessage(response) ?? message,
              code: response?.statusCode,
            );
          case 403:
            return UnAuthorizeServerException(
              message: getResponseMessage(response) ?? message,
              code: response?.statusCode,
            );
          case 404:
            return NotFoundServerException(
              message: getResponseMessage(response) ?? message,
              code: response?.statusCode,
            );
          case 500:
          case 502:
            return InternalServerException(
              message: message,
              code: response?.statusCode,
            );
          case 503:
            return GeneralServerException(
              message: getResponseMessage(response) ?? message,
              code: response?.statusCode,
            );
          default:
            return GeneralServerException(
              message: message,
              code: response?.statusCode,
            );
        }

      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        return TimeOutServerException(
          message: message,
          code: response?.statusCode,
        );

      case DioErrorType.cancel:
      case DioErrorType.other:
        return GeneralServerException(
          message: message,
          code: response?.statusCode,
        );
    }
  }

  String get message {
    switch (type) {
      // TODO(type): Implement error message by your sever error message.
      case DioErrorType.response:
        return getResponseMessage(response) ?? 'Oops';
      case DioErrorType.connectTimeout:
        // TODO: Handle this case.
        return 'connectTimeout';
      case DioErrorType.sendTimeout:
        // TODO: Handle this case.
        return 'sendTimeout';
      case DioErrorType.receiveTimeout:
        // TODO: Handle this case.
        return 'receiveTimeout';
      case DioErrorType.cancel:
        // TODO: Handle this case.
        return 'cancel';
      case DioErrorType.other:
        // TODO: Handle this case.
        return 'other';
    }
  }
}

String? getResponseMessage(Response? response) {
  try {
    final res = response!.data as Map<String, dynamic>;
    print('res');
    return res['message'] as String;
  } catch (err) {
    return null;
  }
}
