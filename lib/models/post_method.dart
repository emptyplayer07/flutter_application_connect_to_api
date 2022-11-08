import 'dart:convert';

import 'package:http/http.dart' as http;

class PostMethod {
  String? id, name, job, createdAt;

  PostMethod({this.id, this.name, this.job, this.createdAt});

  // ignore: non_constant_identifier_names
  static Future<PostMethod> ConnectAPI(String name, String job) async {
    Uri url = Uri.parse("https://reqres.in/api/users");

    var responseResult = await http.post(
      url,
      body: {"name": name, "job": job},
    );

    var data = json.decode(responseResult.body);

    return PostMethod(
        id: data["id"],
        name: data["name"],
        job: data["job"],
        createdAt: data["createdAt"]);
  }
}
