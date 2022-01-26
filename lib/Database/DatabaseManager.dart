import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManager {
  final CollectionReference _collection =
      FirebaseFirestore.instance.collection('usersInfo');

  Future<void> addUserInfo(
    String uid,
    String name,
    String email,
    String phone,
  ) async {
    return await _collection.doc(uid).set({
      'name': name,
      'email': email,
      'phone': phone,
    });
  }
}
