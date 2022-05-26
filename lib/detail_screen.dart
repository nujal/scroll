import 'package:class_list/home_page.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  //const DetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)!.settings.arguments as Todo; //required
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(todo.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(todo.description),
        ),
      ),
    );
  }
}
