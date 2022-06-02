// import 'dart:html';

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text('YAJ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(
              height: 15,
            ),
            Text('Tech',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            SizedBox(
              height: 15,
            ),
            Text('PVT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
            SizedBox(
              height: 15,
            ),
            Text('Limited',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
          ],
        ),
      ),
    );
  }
}
