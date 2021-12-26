class VerifyTransaction {
  int id;
  DateTime completedAt;
  DateTime createdAt;
  String customerEmail;
  String customerName;
  String customerPhoneNo;
  String customerUuid;
  DateTime date;
  String description;
  double dueAmount;
  String ipAddress;
  String merchantImsId;
  String merchantReferenceNo;
  String deviceDetails;
  double processingFees;
  num customerCharge;
  num refund;
  bool refunded;
  bool reversed;
  String referenceNo;
  double totalAmount;
  num fraudWeightedScore;
  String fraudRiskRating;
  DateTime updatedAt;
  ApprovalStatus approvalStatus;
  ApprovalStatus paymentChannel;
  PaymentStatus paymentStatus;
  ApprovalStatus paymentOption;
  ApprovalStatus transactionChannel;

  VerifyTransaction(
      {this.id,
      this.completedAt,
      this.createdAt,
      this.customerEmail,
      this.customerName,
      this.customerPhoneNo,
      this.customerUuid,
      this.date,
      this.description,
      this.dueAmount,
      this.ipAddress,
      this.merchantImsId,
      this.merchantReferenceNo,
      this.deviceDetails,
      this.processingFees,
      this.customerCharge,
      this.refund,
      this.refunded,
      this.reversed,
      this.referenceNo,
      this.totalAmount,
      this.fraudWeightedScore,
      this.fraudRiskRating,
      this.updatedAt,
      this.approvalStatus,
      this.paymentChannel,
      this.paymentStatus,
      this.paymentOption,
      this.transactionChannel});

  VerifyTransaction.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    completedAt = DateTime.parse(json['completedAt']);
    createdAt = DateTime.parse(json['createdAt']);
    customerEmail = json['customerEmail'];
    customerName = json['customerName'];
    customerPhoneNo = json['customerPhoneNo'];
    customerUuid = json['customerUuid'];
    date = DateTime.parse(json['date']);
    description = json['description'];
    dueAmount = json['dueAmount'];
    ipAddress = json['ipAddress'];
    merchantImsId = json['merchantImsId'];
    merchantReferenceNo = json['merchantReferenceNo'];
    deviceDetails = json['deviceDetails'];
    processingFees = json['processingFees'];
    customerCharge = json['customerCharge'];
    refund = json['refund'];
    refunded = json['refunded'];
    reversed = json['reversed'];
    referenceNo = json['referenceNo'];
    totalAmount = json['totalAmount'];
    fraudWeightedScore = json['fraudWeightedScore'];
    fraudRiskRating = json['fraudRiskRating'];
    updatedAt = DateTime.parse(json['updatedAt']);
    approvalStatus = json['approvalStatus'] != null
        ? ApprovalStatus.fromJson(json['approvalStatus'])
        : null;
    paymentChannel = json['paymentChannel'] != null
        ? ApprovalStatus.fromJson(json['paymentChannel'])
        : null;
    paymentStatus = json['paymentStatus'] != null
        ? PaymentStatus.fromJson(json['paymentStatus'])
        : null;
    paymentOption = json['paymentOption'] != null
        ? ApprovalStatus.fromJson(json['paymentOption'])
        : null;
    transactionChannel = json['transactionChannel'] != null
        ? ApprovalStatus.fromJson(json['transactionChannel'])
        : null;
  }
}

class ApprovalStatus {
  int id;
  String name;

  ApprovalStatus({this.id, this.name});

  ApprovalStatus.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}

class PaymentStatus {
  int id;
  dynamic description;
  String name;

  PaymentStatus({this.id, this.description, this.name});

  PaymentStatus.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    name = json['name'];
  }
}
