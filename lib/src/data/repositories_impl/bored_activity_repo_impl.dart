import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_template/src/core/network/data_state.dart';
import 'package:flutter_template/src/domain/entities/activity.dart';
import 'package:flutter_template/src/domain/repositories/bored_activity/bored_activity_repo.dart';
import 'package:logger/logger.dart';

import '../datasources/remote/bored_activity_api.dart';

class BoredActivityRepoImpl implements BoredActivityRepo {
  final BoredActivityApi _boredApi;
  BoredActivityRepoImpl(this._boredApi);

  final logger = Logger();

  @override
  Future<DataState<Activity>> getNewActivity() async {
    try {
      final httpResponse = await _boredApi.fetchMovies();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      }
      return DataFailed(
        DioError(
          requestOptions: httpResponse.response.requestOptions,
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
