import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<List<UserModel>> getUsers();
  Future<void> createUser(final UserModel userModel);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
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

  @override
  Future<void> createUser(final UserModel userModel) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc('my-id');
    await docUser.set(userModel.toJson());
  }
}
