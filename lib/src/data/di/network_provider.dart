import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/src/core/network/dio_provider.dart';
import 'package:flutter_template/src/data/datasources/firebase/auth/firestore_auth_api.dart';
import 'package:flutter_template/src/data/datasources/remote/bored_activity_api.dart';

final dioBuilderProvider = Provider<Dio>(
  (ref) => DioProvider.httpDio,
);

final boredApiProvider = Provider<BoredActivityApi>(
  (ref) => BoredActivityApi(
    ref.watch(dioBuilderProvider),
  ),
);

final firestoreAuthApiProvider = Provider<FireStoreAuthApi>(
  (ref) => FireStoreAuthApi(),
);
