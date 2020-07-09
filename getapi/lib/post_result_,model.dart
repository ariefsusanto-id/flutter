import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResult {
  String accesstoken;
  String refreshtoken;
  String scope;
  String idtoken;
  String tokentype;
  int expiresin;

  PostResult({this.accesstoken  , this.refreshtoken, this.scope, this.idtoken, this.tokentype, this.expiresin});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
      accesstoken: object['access_token'],
      refreshtoken: object['refresh_token'],
      scope: object['scope'],
      idtoken: object['id_token'],
      tokentype: object['token_type'],
      expiresin: object['expires_in'],
    );
  }

  static Future<PostResult> connectToAPI(String username, String password, String granttype, String scope) async {
    String apiURL = "https://centralnode.pancaran-group.co.id:8245/token";
    var apiResult = await http.post(apiURL, 
    headers: {
      "Authorization":"Basic cWNBZUVqY2p6a1p1YVpyblRoVlBDMW1KQUdjYTp0eHJQOW9veTgyZ3I0d0RnU1NZZlh4NlVWZThh",
      "Content-Type": "application/x-www-form-urlencoded"
    },
    body: {"username": username, "password": password, "grant_type":granttype , "scope":scope});

    var jsonObject = json.decode(apiResult.body);
    return PostResult.createPostResult(jsonObject);
  }
}
