// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:flutter_template/src/core/exceptions/base_exception.dart';
// import 'package:flutter_template/src/core/network/dio_provider.dart';
// import 'package:flutter_template/src/core/network/error_handlers.dart';
// import 'package:logger/logger.dart';

// abstract class BaseRepository {
//   Dio get dioClient => DioProvider.dioWithHeaderToken;

//   final logger = Logger();

//   Future<Response<T>> callApiWithErrorParser<T>(Future<Response<T>> api) async {
//     try {
//       Response<T> response = await api;

//       if (response.statusCode != HttpStatus.ok ||
//           (response.data as Map<String, dynamic>)['statusCode'] !=
//               HttpStatus.ok) {
//         // TODO
//       }

//       return response;
//     } on DioError catch (dioError) {
//       Exception exception = handleDioError(dioError);
//       logger.e(
//           "Throwing error from repository: >>>>>>> $exception : ${(exception as BaseException).message}");
//       throw exception;
//     } catch (error) {
//       logger.e("Generic error: >>>>>>> $error");

//       if (error is BaseException) {
//         rethrow;
//       }

//       throw handleError("$error");
//     }
//   }
// }
