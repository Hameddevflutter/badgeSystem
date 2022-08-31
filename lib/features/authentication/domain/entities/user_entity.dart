import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.firstName,
    required this.mobile,
    required this.lastName,
    required this.email,
    required this.password,
    required this.badge,
  });
  final String firstName;
  final String mobile;
  final String lastName;
  final String email;
  final String password;
  final String badge;

  @override
  List<Object> get props => [email];
}
