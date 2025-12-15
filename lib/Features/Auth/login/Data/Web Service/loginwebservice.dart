import 'package:citivoice_admin/Core/api/api_consumer.dart';
import 'package:citivoice_admin/Core/api/end_points.dart';
import 'package:citivoice_admin/Features/Auth/login/Data/Model/loginentity.dart';
import 'package:injectable/injectable.dart';

abstract class LoginWebService {
  Future<LoginEntity> login(String email, String password);
}

@Singleton(as: LoginWebService)
class LoginWebServiceImpl implements LoginWebService {
  final ApiConsumer _apiConsumer;

  LoginWebServiceImpl(this._apiConsumer);

  @override
  Future<LoginEntity> login(String email, String password) async {
    final response = await _apiConsumer.post(
      EndPoints.login_url,
      body: {"email": email, "password": password},
    );
    return LoginEntity.fromJson(response);
  }
}
