import 'package:flutter/material.dart';

import '../../services/hive_service.dart';
import '../di/di_setup.dart';
import '../models/user_credentials/user_credentials.dart';

class AuthProvider extends ChangeNotifier {
  AuthProvider() {
    _credentials = _hiveService.getUserCredential();
  }
  final _hiveService = getIt.get<HiveService>();

  late UserCredentials _credentials;

  UserCredentials get userCredentials => _credentials;
  bool get isAuth => _credentials.uid != null;

  Future login(UserCredentials userCredentials) async {
    await _hiveService.saveUserCredential(userCredentials);
    _credentials = _hiveService.getUserCredential();
    notifyListeners();
  }

  Future logout() async {
    await _hiveService.saveUserCredential(UserCredentials());
    _credentials = _hiveService.getUserCredential();

    notifyListeners();
  }
}
