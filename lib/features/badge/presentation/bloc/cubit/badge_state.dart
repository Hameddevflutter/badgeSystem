part of 'badge_cubit.dart';

abstract class BadgeState extends Equatable {
  const BadgeState();

  @override
  List<Object> get props => [];
}

class BadgeInitial extends BadgeState {
  const BadgeInitial();
}

class BadgeLoading extends BadgeState {
  const BadgeLoading();
}

class BadgeLoaded extends BadgeState {
  const BadgeLoaded(this.users);
  final List<UserModel> users;
}

class BadgeError extends BadgeState {
  const BadgeError(this.message);
  final String message;
}
