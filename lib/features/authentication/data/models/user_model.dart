import '../../domain/entities/user_entity.dart';

class UserModel extends User {
  const UserModel({
    required final String firstName,
    required final String mobile,
    required final String lastName,
    required final String email,
    required final String password,
    required final String badge,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          mobile: mobile,
          email: email,
          password: password,
          badge: badge,
        );

  factory UserModel.fromJson(final Map<String, dynamic> json) => UserModel(
        firstName: json['firstName'],
        mobile: json['mobile'],
        lastName: json['lastName'],
        email: json['email'],
        password: json['password'],
        badge: json['badge'],
      );

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'mobile': mobile,
        'lastName': lastName,
        'email': email,
        'password': password,
        'badge': badge,
      };
}
