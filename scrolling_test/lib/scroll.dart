import 'dart:ui';

import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  const Scroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.bubble_chart_rounded),
        title: Text(
          'Images',
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [Icon(Icons.notifications)],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.blue,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.red,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.blue,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.green,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.blue,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.red,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.blue,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.green,
                ),
              ],
            ),
          ),
          Container(
              height: 400,
              child: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 3,
                children: List.generate(20, (index) {
                  return Container(
                    child: Card(
                      color: Colors.blue,
                    ),
                  );
                }),
              )),
          Container(
            height: 120,
            color: Colors.cyan,
          )
        ],
      ),
    );
  }
}
