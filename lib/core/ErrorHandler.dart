import 'package:dio/dio.dart';

class ErrorHandler {
  static String getErrorMessage(Object error) {
    if (error is DioException) {
      // Handle Dio-specific errors
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return "Connection Timeout! Please check your internet connection.";
        case DioExceptionType.sendTimeout:
          return "Request Timeout! Unable to send data to the server.";
        case DioExceptionType.receiveTimeout:
          return "Response Timeout! Server took too long to respond.";
        case DioExceptionType.badResponse:
          // Handle server response errors
          final errorData = error.response?.data;
          if (errorData is Map<String, dynamic> &&
              errorData.containsKey('message')) {
            return "Error: ${errorData['message']}";
          }
          return "Server error occurred with status code ${error.response?.statusCode ?? 'unknown'}.";
        case DioExceptionType.cancel:
          return "Request was cancelled. Please try again.";
        case DioExceptionType.unknown: // Previously called 'other'
          if (error.message!.contains('SocketException')) {
            return "No Internet connection. Please check your network.";
          }
          return "An unexpected error occurred. Please try again.";
        default:
          return "Something went wrong. Please try again.";
      }
    }
    // Handle non-Dio errors
    return "An unexpected error occurred: ${error.toString()}";
  }
}
