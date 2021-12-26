import 'enums/payment_options.dart';

extension Option on PaymentOption {
  String option() {
    return toString().split('.').last.toUpperCase();
  }
}
