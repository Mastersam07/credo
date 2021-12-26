import '../models/initiate_payment.dart';
import '../models/verify_transaction.dart';
import '../shared/enums/payment_options.dart';
import 'package:flutter/material.dart' show required;

abstract class CredoServiceContract {
  Future<InitiatePayment> initializePayment(
      {@required double amount,
      @required String currency,
      @required String redirectUrl,
      @required String transactionRef,
      List<PaymentOption> paymentOptions,
      @required String customerEmail,
      @required String customerName,
      String customerPhoneNo,
      @required String publicKey});

  Future<VerifyTransaction> verifyTransaction({
    @required String transactionRef,
    @required String secretKey,
  });
}
