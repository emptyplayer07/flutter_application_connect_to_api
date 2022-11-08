import 'package:flutter/material.dart';

// ignore: camel_case_types
class postPage extends StatefulWidget {
  const postPage({super.key});

  @override
  State<postPage> createState() => _postPageState();
}

// ignore: camel_case_types
class _postPageState extends State<postPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("POST Method")),
    );
  }
}
