import 'package:flutter/material.dart';
import 'package:home_iot/src/auth/pages/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Iot',
      home: LoginPage(),
    );
  }
}
