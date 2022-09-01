

import 'package:dartz/dartz.dart';

import '../../../../core/error/Failures.dart';
import '../../../authentication/data/models/user_model.dart';
import '../../domain/repositories/badge_repository.dart';
import '../datasources/badge_remote_data_source.dart';

class BadgeRepositoryImpl extends BadgeRepository {
  BadgeRepositoryImpl(this.badgeRemoteDataSource);
  late BadgeRemoteDataSource badgeRemoteDataSource;

  @override
  Future<Either<Failure, List<UserModel>>> getUsers() async {
    final List<UserModel> users = await badgeRemoteDataSource.getUsers();
    return Right(users);
  }
}
