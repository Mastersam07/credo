abstract class CredoApiContract {
  Future postRequest(
      {String endpoint,
      Map<String, dynamic> headers,
      Map<String, dynamic> body});

  Future getRequest({String endpoint, Map<String, dynamic> headers});
}
