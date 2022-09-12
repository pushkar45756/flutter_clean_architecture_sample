import 'package:flutter_template/src/core/network/data_state.dart';
import 'package:flutter_template/src/domain/entities/registered_user.dart';

abstract class SignupRepository {
  Future<DataState<String?>> signupUser(RegisteredUser? user);
}
