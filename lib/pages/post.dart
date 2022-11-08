import 'package:flutter/material.dart';
import 'package:flutter_application_connect_to_api/models/post_method.dart';

// ignore: camel_case_types
class postPage extends StatefulWidget {
  const postPage({super.key});

  @override
  State<postPage> createState() => _postPageState();
}

// ignore: camel_case_types
class _postPageState extends State<postPage> {
  PostMethod dataResponse = PostMethod();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("POST Method")),
      body: Center(
          child: Column(
        children: [
          Text((dataResponse.id == null)
              ? "ID : Null"
              : "ID : ${dataResponse.id}"),
          Text((dataResponse.name == null)
              ? "Name : null"
              : "Name : ${dataResponse.name}"),
          Text((dataResponse.job == null)
              ? "Job : null"
              : "Job : ${dataResponse.job}"),
          Text((dataResponse.createdAt == null)
              ? "CreatedAt : null"
              : "CreatedAt : ${dataResponse.createdAt}"),
          ElevatedButton(
              onPressed: () {
                PostMethod.ConnectAPI("candra", "programmer").then((value) {
                  setState(() {
                    dataResponse = value;
                  });
                });
              },
              child: const Text("Post Method"))
        ],
      )),
    );
  }
}
