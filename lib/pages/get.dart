import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_connect_to_api/models/get_method.dart';

// ignore: camel_case_types
class getPage extends StatefulWidget {
  const getPage({super.key});

  @override
  State<getPage> createState() => _getPageState();
}

// ignore: camel_case_types
class _getPageState extends State<getPage> {
  GetMethod dataResponse = GetMethod();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GET Page")),
      body: Center(
          child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: SizedBox(
              width: 100,
              height: 100,
              child: (dataResponse.avatar == null
                  ? const Image(image: AssetImage("images/blank_profile.png"))
                  : Image.network(dataResponse.avatar.toString())),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text((dataResponse.fullname == null)
                ? "Name : null"
                : "Name : ${dataResponse.fullname}"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text((dataResponse.email == null)
                ? "Email : null"
                : "Name : ${dataResponse.email}"),
          ),
          ElevatedButton(
              onPressed: () {
                GetMethod.connectAPI((1 + Random().nextInt(10)).toString())
                    .then((value) {
                  setState(() {
                    dataResponse = value;
                  });
                });
              },
              child: Text("GET Method"))
        ],
      )),
    );
  }
}
