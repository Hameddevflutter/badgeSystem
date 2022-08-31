import 'package:dartz/dartz.dart';

import '../../../../core/error/Failures.dart';
import '../../data/models/user_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, List<UserModel>>> getUsers();
  Future<Either<Failure, void>> createUser(final UserModel userModel);
}
