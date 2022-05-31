import 'package:class_list/home_page.dart';
import 'package:class_list/list_model.dart';
import 'package:class_list/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: RouteHandler.generateRoute,
      initialRoute: HomePage.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
