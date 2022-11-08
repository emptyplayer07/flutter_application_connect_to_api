import 'package:flutter/material.dart';
import 'package:flutter_application_connect_to_api/pages/get.dart';
import 'package:flutter_application_connect_to_api/pages/post.dart';

// ignore: camel_case_types
class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const postPage())));
                },
                child: const Text("POST Method")),
          ),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => getPage())));
                  },
                  child: const Text("GET Method")))
        ]),
      ),
    );
  }
}
