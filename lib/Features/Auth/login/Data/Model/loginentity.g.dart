// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginEntity _$LoginEntityFromJson(Map<String, dynamic> json) => LoginEntity(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
  error: json['error'] == null
      ? null
      : Error.fromJson(json['error'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LoginEntityToJson(LoginEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  token: json['access_token'] as String,
  user: User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'access_token': instance.token,
  'user': instance.user,
};

User _$UserFromJson(Map<String, dynamic> json) =>
    User(name: json['name'] as String);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'name': instance.name,
};

Error _$ErrorFromJson(Map<String, dynamic> json) =>
    Error(message: json['message'] as String);

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
  'message': instance.message,
};
