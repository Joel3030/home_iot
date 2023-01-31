import 'package:flutter/material.dart';

class LedPage extends StatefulWidget {
  const LedPage({Key? key}) : super(key: key);

  @override
  State<LedPage> createState() => _LedPageState();
}

class _LedPageState extends State<LedPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('LedPage')),
    );
  }
}
