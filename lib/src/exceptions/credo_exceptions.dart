import 'package:flutter/material.dart';

class CredoException implements Exception {
  final String message;
  CredoException({
    @required this.message,
  });
}

// Some exception that extends the credo exception
class SomeException extends CredoException {
  SomeException(String message) : super(message: message);
}
