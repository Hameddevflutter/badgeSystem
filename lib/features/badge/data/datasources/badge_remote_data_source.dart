import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user_model.dart';



abstract class BadgeRemoteDataSource {
  Future<List<UserModel>> getUsers();
}

class BadgeRemoteDataSourceImpl extends BadgeRemoteDataSource {
  @override
  Future<List<UserModel>> getUsers() async {
    List<UserModel> users = [];

    FirebaseFirestore.instance.collection('users').snapshots().map(
          (final event) => event.docs.map(
            (final e) => UserModel.fromJson(
              e.data(),
            ),
          ),
        );
    return users;
  }
}
