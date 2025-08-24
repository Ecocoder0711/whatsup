import 'dart:developer';

import 'package:whatsup/core/other/base_viewmodel.dart';
import 'package:whatsup/core/services/auth_service.dart';

class LoginViewmodel extends BaseViewmodel {
  final AuthService _auth;

  String _email = '';

  String _password = '';

  setEmail(String Value) {
    _email = Value;
    notifyListeners();
  }

  setPassword(String Value) {
    _password = Value;
    notifyListeners();
  }

  LoginViewmodel(this._auth);
  login() async {
    try {
      await _auth.login(_email, _password);
    } catch (e) {
      log(e.toString());
    }
    // _auth.signup(email, password)
  }
}
