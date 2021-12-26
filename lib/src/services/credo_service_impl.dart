import 'dart:async';

import '../shared/enums/payment_options.dart';
import '../models/verify_transaction.dart';
import '../models/initiate_payment.dart';

import 'credo_service.dart';

class CredoService implements CredoServiceContract {
  @override
  Future<InitiatePayment> initializePayment(
      {double amount,
      String currency,
      String redirectUrl,
      String transactionRef,
      List<PaymentOption> paymentOptions,
      String customerEmail,
      String customerName,
      String customerPhoneNo,
      String publicKey}) {
    // TODO: implement initializePayment
    throw UnimplementedError();
  }

  @override
  Future<VerifyTransaction> verifyTransaction(
      {String transactionRef, String secretKey}) {
    // TODO: implement verifyTransaction
    throw UnimplementedError();
  }
}
