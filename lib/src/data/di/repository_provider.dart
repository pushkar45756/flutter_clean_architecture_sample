import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/src/data/di/network_provider.dart';
import 'package:flutter_template/src/data/repositories_impl/bored_activity_repo_impl.dart';
import 'package:flutter_template/src/data/repositories_impl/signup_repo_impl.dart';
import 'package:flutter_template/src/domain/repositories/bored_activity/bored_activity_repo.dart';
import 'package:flutter_template/src/domain/repositories/signup/signup_repository.dart';

final boredRepositoryProvider = Provider<BoredActivityRepo>(
  (ref) => BoredActivityRepoImpl(
    ref.watch(boredApiProvider),
  ),
);

final signupRepoProvider = Provider<SignupRepository>(
  (ref) => FirebaseSignupRepoImpl(
    ref.watch(firestoreAuthApiProvider),
  ),
);
