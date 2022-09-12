import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_template/src/core/network/data_state.dart';
import 'package:flutter_template/src/core/values/app_strings.dart';

import 'package:flutter_template/src/data/datasources/firebase/auth/firestore_profile_api.dart';
import 'package:flutter_template/src/domain/entities/registered_user.dart';

class FireStoreAuthApi extends FireStoreProfileApi {
  Future<String?> signupWithEmail(RegisteredUser? rUser) async {
    var resp = '';
    try {
      var cred = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: rUser?.email?.toLowerCase() ?? "",
          password: rUser?.password ?? "");
      user = cred.user;
      resp = "Success : ${user?.uid}";
      createUser(user?.uid, rUser?.email, rUser?.name);
      return resp;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        resp = "Week Password";
        return resp;
      } else if (e.code == 'email-already-in-use') {
        resp = AppStrings.accountExistError;
        return resp;
      }
      return null;
    } catch (e) {
      resp = e.toString();
      return resp;
    }
  }
}
