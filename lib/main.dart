import 'package:flutter/material.dart';

void main() {
  runApp(const HumindCloudApp());
}

class HumindCloudApp extends StatelessWidget {
  const HumindCloudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Humind Cloud',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'Bienvenido a Humind Cloud',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
