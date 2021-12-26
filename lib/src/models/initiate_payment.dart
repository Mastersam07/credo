class InitiatePayment {
  String message;
  String status;
  String paymentLink;
  String paymentSlug;

  InitiatePayment(
      {this.message, this.status, this.paymentLink, this.paymentSlug});

  InitiatePayment.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    paymentLink = json['paymentLink'];
    paymentSlug = json['paymentSlug'];
  }
}
