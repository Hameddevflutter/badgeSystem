import 'package:dartz/dartz.dart';

import '../../../../core/error/Failures.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';
import '../models/user_model.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this._authRemoteDataSource);
  late final AuthRemoteDataSource _authRemoteDataSource;

  @override
  Future<Either<Failure, List<UserModel>>> getUsers() async {
    List<UserModel> users = await _authRemoteDataSource.getUsers();
    return Right(users);
  }

  @override
  Future<Either<Failure, void>> createUser(final UserModel userModel) async {
    await _authRemoteDataSource.createUser(userModel);
    return const Right("Success");
  }
}
