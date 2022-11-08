import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_connect_to_api/models/get_method.dart';

class getPage extends StatefulWidget {
  const getPage({super.key});

  @override
  State<getPage> createState() => _getPageState();
}

class _getPageState extends State<getPage> {
  GetMethod dataResponse = GetMethod();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GET Page")),
      body: Center(
          child: Column(
        children: [
          // Text((dataResponse.fullname == null)
          //     ? "Name : null"
          //     : "Name : ${dataResponse.fullname}"),
          Text("data"),
          Text("data"),
          Text("data"),
          ElevatedButton(
              onPressed: () {
                GetMethod.connectAPI((1 + Random().nextInt(10)).toString())
                    .then((value) {
                  print(value);
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
