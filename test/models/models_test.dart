import 'package:credo_flutter/src/models/initiate_payment.dart';
import 'package:credo_flutter/src/models/verify_transaction.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  dynamic initResponse;
  dynamic verificationResponse;
  setUpAll(() {
    initResponse = {
      "message": "Redirect browser to the payment link",
      "status": "success",
      "paymentLink":
          "https://www.credodemo.com/paymentgateway/NqqjcswRt0V1svMmdMM4",
      "paymentSlug": "NqqjcswRt0V1svMmdMM4"
    };
    verificationResponse = {
      "id": 229,
      "completedAt": "2021-12-26T14:28:55",
      "createdAt": "2021-12-26T14:28:55",
      "customerEmail": "cirochwukunle@example.com",
      "customerName": "Ciroma Chukwuma Adekunle",
      "customerPhoneNo": "2348012345678",
      "customerUuid": null,
      "date": "2021-12-26",
      "description": "Transaction",
      "dueAmount": 1477.7955,
      "ipAddress": "197.210.28.61",
      "merchantImsId": "20202667809036-DEMO",
      "merchantReferenceNo": "gege",
      "deviceDetails": "PostmanRuntime/7.28.4",
      "processingFees": 22.5045,
      "customerCharge": 0.0,
      "refund": 0.0,
      "refunded": false,
      "reversed": false,
      "referenceNo": "CREDO-U7soz7IULA",
      "totalAmount": 1500.3,
      "fraudWeightedScore": 0.0,
      "fraudRiskRating": "Allow",
      "customFields": null,
      "fraudNomenclature": null,
      "updatedAt": "2021-12-26T14:28:55",
      "approvalStatus": {"id": 4, "name": "Rejected"},
      "paymentChannel": {"id": 1, "name": "Card"},
      "paymentStatus": {"id": 3, "description": null, "name": "Declined"},
      "paymentOption": {"id": 1, "name": "Regular"},
      "transactionChannel": {"id": 3, "name": "Widget integration"}
    };
  });
  group('Test for models', () {
    test('Is initPaymentResponseModel a type of InitiatePayment', () {
      InitiatePayment initPaymentResponseModel =
          InitiatePayment.fromJson(initResponse);
      expect(initPaymentResponseModel, isA<InitiatePayment>());
    });

    test('Test args can be passed to constructor of InitiatePayment', () {
      InitiatePayment initPaymentResponseModel = InitiatePayment(
          message: 'message',
          paymentLink: 'a link',
          paymentSlug: 'a slug',
          status: 'sucess');
      expect(initPaymentResponseModel.message, 'message');
    });

    test('Is verificationResponseModel subclass of VerifyTransaction', () {
      VerifyTransaction verificationResponseModel =
          VerifyTransaction.fromJson(verificationResponse);
      expect(verificationResponseModel, isA<VerifyTransaction>());
    });

    test('Test args can be passed to constructor of VerifyTransaction', () {
      VerifyTransaction verificationResponseModel =
          VerifyTransaction(customerName: 'Mastersam');
      expect(verificationResponseModel.customerName, 'Mastersam');
    });

    test('Test args can be passed to constructor of ApprovalStatus', () {
      ApprovalStatus approvalResponseModel = ApprovalStatus(name: 'Rejected');
      expect(approvalResponseModel.name, 'Rejected');
    });

    test('Test args can be passed to constructor of ApprovalStatus', () {
      PaymentStatus paymentResponseModel = PaymentStatus(name: 'Rejected');
      expect(paymentResponseModel.name, 'Rejected');
    });
  });
}
