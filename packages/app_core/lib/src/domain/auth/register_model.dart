import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';

part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    @Default('') String email,
    @Default('') String password,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}
