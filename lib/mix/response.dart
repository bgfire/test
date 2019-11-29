class MYResponse {
  String accessToken;
  String tokenType;

  MYResponse({this.accessToken, this.tokenType});

  MYResponse.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    tokenType = json['tokenType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accessToken'] = this.accessToken;
    data['tokenType'] = this.tokenType;
    return data;
  }
}
