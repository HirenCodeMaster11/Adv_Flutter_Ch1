import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class PhotoProvider extends ChangeNotifier
{
  final auth = LocalAuthentication();
  bool response = false;

  Future<void> checkFringerprint() async {
    bool isSupported = await auth.isDeviceSupported();
    bool isActive = await auth.canCheckBiometrics;


    if (isSupported && isActive) {
      response = await auth.authenticate(
          localizedReason: 'Please add your fingerprint...');

      if (response) {
        log('fingerprint successfully worked!');
      }
    } else {
      log("Your device is not supported for fingerprint...!");
    }
    notifyListeners();
  }
}