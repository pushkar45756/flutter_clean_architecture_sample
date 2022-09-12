import 'package:dio/dio.dart';
import 'package:flutter_template/src/core/network/data_state.dart';
import 'package:flutter_template/src/core/values/app_strings.dart';
import 'package:flutter_template/src/data/datasources/firebase/auth/firestore_auth_api.dart';
import 'package:flutter_template/src/domain/entities/registered_user.dart';
import 'package:flutter_template/src/domain/repositories/signup/signup_repository.dart';

class FirebaseSignupRepoImpl implements SignupRepository {
  final FireStoreAuthApi _fireStoreAuthApi;
  FirebaseSignupRepoImpl(this._fireStoreAuthApi);

  @override
  Future<DataState<String?>> signupUser(RegisteredUser? user) async {
    String? data = await _fireStoreAuthApi.signupWithEmail(user);
    if (data != null && data.contains(AppStrings.success)) {
      return DataSuccess(data);
    } else {
      return DataFailure(data ?? "Something Went Wrong");
    }
  }
}
