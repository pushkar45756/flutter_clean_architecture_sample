import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class BaseFireStore {
  final dbRef = FirebaseFirestore.instance;
  var user = FirebaseAuth.instance.currentUser;
  var firebaseAuthInstance = FirebaseAuth.instance;
  FirebaseStorage storage = FirebaseStorage.instance;
}
