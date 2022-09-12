import 'package:flutter_template/src/core/base/base_use_case.dart';
import 'package:flutter_template/src/core/network/data_state.dart';

import 'package:flutter_template/src/domain/entities/registered_user.dart';
import 'package:flutter_template/src/domain/repositories/signup/signup_repository.dart';

class SignupUseCase extends UseCase<String?, RegisteredUser> {
  final SignupRepository _signupRepository;

  SignupUseCase({required SignupRepository signupRepository})
      : _signupRepository = signupRepository;

  @override
  Future<DataState<String?>> call({RegisteredUser? params}) {
    return _signupRepository.signupUser(params);
  }
}
