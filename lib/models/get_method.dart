import 'dart:convert';

import 'package:http/http.dart' as http;

class GetMethod {
  String? id, email, fullname, avatar;

  GetMethod({this.id, this.email, this.fullname, this.avatar});

  static Future<GetMethod> connectAPI(String id) async {
    Uri url = Uri.parse("https://reqres.in/api/users/$id");

    var responseResult = await http.get(url);

    var data = json.decode(responseResult.body);

    return GetMethod(
      id: data["id"].toString(),
      email: data["email"],
      fullname: data["first_name"] + " " + data["last_name"],
      avatar: data["avatar"],
    );
  }
}
