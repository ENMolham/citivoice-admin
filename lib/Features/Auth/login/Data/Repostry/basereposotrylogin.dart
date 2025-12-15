import 'package:citivoice_admin/Core/error/network_exceptions.dart';
import 'package:citivoice_admin/Features/Auth/login/Data/Model/loginentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseReposotryLogin {
  Future<Either<NetworkExceptions, LoginEntity>> login(
    String email,
    String password,
  );
}
