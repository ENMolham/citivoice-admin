import 'package:freezed_annotation/freezed_annotation.dart';

part 'loginentity.g.dart';

@JsonSerializable()
class LoginEntity {
  final bool success;
  final String message;
  final Data? data;
  final Error? error;

  LoginEntity({
    required this.success,
    required this.message,
    this.data,
    this.error,
  });

  factory LoginEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LoginEntityToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: 'access_token')
  final String token;
  @JsonKey(name: 'user')
  final User user;

  Data({required this.token, required this.user});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class User {
  final String name;

  User({required this.name});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Error {
  final String message;

  Error({required this.message});

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}
