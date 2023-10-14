import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void getContact() async {
    final res = await Dio().get(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/',
    );
    print(res.data.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              getContact();
            },
            child: const Text('dio'),
          ),
        ),
      ),
    );
  }
}
