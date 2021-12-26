import 'package:flutter/cupertino.dart';

class CredoBaseUrl {
  static const String _demoBaseUrl = 'https://api.public.credodemo'
      '.com/credo-payment/v1';

  static const String _liveBaseUrl = 'https://api.credocentral'
      '.com/credo-payment/v1';

  static String _baseUrl;

  static set url(String baseUrl) => _baseUrl = baseUrl;

  static String get baseUrl => _baseUrl;

  CredoBaseUrl._privateConstructor();

  static final CredoBaseUrl _instance = CredoBaseUrl._privateConstructor();

  factory CredoBaseUrl({@required debugMode}) {
    if (debugMode) {
      url = _demoBaseUrl;
    } else {
      url = _liveBaseUrl;
    }
    return _instance;
  }
}
