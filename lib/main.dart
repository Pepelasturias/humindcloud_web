import 'package:flutter/material.dart';
import 'views/home_page.dart';

void main() {
  runApp(const HumindCloudApp());
}

class HumindCloudApp extends StatelessWidget {
  const HumindCloudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
