import 'package:flutter_template/src/core/values/app_strings.dart';
import 'package:flutter_template/src/data/datasources/firebase/auth/base_firestore.dart';

class FireStoreProfileApi extends BaseFireStore {
  var response;
  Future<String> createUser(uId, email, name) async {
    await dbRef
        .collection('Users')
        .doc(uId)
        .set({'id': uId, ' email': email, 'name': name});

    return AppStrings.success;
  }
}
