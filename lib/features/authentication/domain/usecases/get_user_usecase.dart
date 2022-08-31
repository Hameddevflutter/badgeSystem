import 'package:dartz/dartz.dart';

import '../../../../core/error/Failures.dart';
import '../../../../core/usecases/UseCase.dart';
import '../../data/models/user_model.dart';
import '../repositories/auth_repository.dart';

class GetUsersUseCase extends UseCase<List<UserModel>, NoParams> {
  late AuthRepository _authRepository;

  @override
  Future<Either<Failure, List<UserModel>>> call(final NoParams params) async =>
      await _authRepository.getUsers();
}
