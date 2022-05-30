import 'package:flutter/material.dart';

class FrontendScreen extends StatelessWidget {
  const FrontendScreen({Key? key}) : super(key: key);
  static const String routeName = '/front-end';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text('Front page')),
      ),
    );
  }
}
