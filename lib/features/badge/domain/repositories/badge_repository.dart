import 'package:dartz/dartz.dart';

import '../../../../core/error/Failures.dart';
import '../../data/models/user_model.dart';

abstract class BadgeRepository {
  Future<Either<Failure, List<UserModel>>> getUsers();
}
