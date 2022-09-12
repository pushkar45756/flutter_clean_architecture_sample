import 'package:dio/dio.dart';
import 'package:flutter_template/src/data/models/activity_model.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

part 'bored_activity_api.g.dart';

@RestApi()
abstract class BoredActivityApi {
  factory BoredActivityApi(Dio dioBuilder, {String baseUrl}) =
      _BoredActivityApi;

  @GET('/activity')
  Future<HttpResponse<ActivityModel>> fetchMovies();
}
