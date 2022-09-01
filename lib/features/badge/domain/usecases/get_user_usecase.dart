import 'package:dartz/dartz.dart';

import '../../../../core/error/Failures.dart';
import '../../../../core/usecases/UseCase.dart';
import '../../data/models/user_model.dart';
import '../repositories/badge_repository.dart';

class GetBadgeUsersUseCase extends UseCase<List<UserModel>, NoParams> {
  GetBadgeUsersUseCase(this._badgeRepository);
  late final BadgeRepository _badgeRepository;

  @override
  Future<Either<Failure, List<UserModel>>> call(final NoParams params) async =>
      await _badgeRepository.getUsers();
}
