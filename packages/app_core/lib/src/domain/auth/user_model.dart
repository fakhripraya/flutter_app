import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default('') String id,
    @Default('') String username,
    @Default('') String email,
    @Default('') String password,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

abstract class IUser {
  String get id;
  String get username;
  String? get email;
  String? get password;
}

class User implements IUser {
  @override
  final String id;
  @override
  final String username;
  @override
  final String? email;
  @override
  final String? password;

  const User({
    required this.id,
    required this.username,
    this.email,
    this.password,
  });

  factory User.fromUserModel(UserModel userModel) {
    return User(
      id: userModel.id,
      username: userModel.username,
      email: userModel.email,
      password: userModel.password,
    );
  }
}
