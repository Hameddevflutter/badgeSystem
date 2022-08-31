import 'package:dartz/dartz.dart';

import '../error/Failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(final Params params);
}

class NoParams {
  NoParams();
}
