import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  IconData customIcon = Icons.search;

  Widget customSearchBar = const Text('Search');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: customSearchBar,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (customIcon == Icons.search) {
                    customIcon = Icons.cancel;
                    customSearchBar = const ListTile(
                      leading: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 28,
                      ),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'type in required field...',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                  } else {
                    customIcon = Icons.search;
                    customSearchBar = const Text('Search');
                  }
                });
              },
              icon: Icon(customIcon)),
        ],
      ),
    );
  }
}
