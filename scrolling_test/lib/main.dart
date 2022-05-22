import 'package:flutter/material.dart';
import 'package:scrolling_test/scroll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scroll(),
    );
  }
}
