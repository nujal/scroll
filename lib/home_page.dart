import 'package:class_list/detail_screen.dart';
import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;
  const Todo(this.title, this.description);
}

class HomePage extends StatelessWidget {
  List<Todo> todos = List.generate(
      20,
      (index) => Todo('Todo $index',
          'A description of what needs to be done for Todo $index'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo list'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(todos[i].title),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                    settings: RouteSettings(
                      arguments: todos[
                          i], //homepage ko data detail screen ma pathauna arguments pass garna parxa
                    ),
                  ));
            },
          );
        },
      ),
    );
  }
}
