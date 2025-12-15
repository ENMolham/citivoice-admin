import 'package:citivoice_admin/Core/error/network_exceptions.dart';
import 'package:citivoice_admin/Core/utils/shared_preference_utils.dart';
import 'package:citivoice_admin/Features/Auth/login/Data/Model/loginentity.dart';
import 'package:citivoice_admin/Features/Auth/login/Data/Repostry/basereposotrylogin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._baseReposotryLogin, this._sharedPreferencesUtils)
    : super(const LoginState.initial());

  final BaseReposotryLogin _baseReposotryLogin;
  final SharedPreferencesUtils _sharedPreferencesUtils;

  Future<void> emitLogin(String email, String password) async {
    emit(const LoginState.loading());
    final response = await _baseReposotryLogin.login(email, password);

    response.fold((l) => emit(LoginState.error(l)), (r) {
      _sharedPreferencesUtils.setToken(r.data!.token);
      _sharedPreferencesUtils.setUsername(r.data!.user.name);
      emit(LoginState.success(r));
    });
  }
}
