// import 'dart:ui';

import 'package:flutter/material.dart';

import 'bottom_part.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);
  static const String routeName = '/detail-page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 240, 239, 239),
              height: 300,
              padding: EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 15.0,
                            color: Color.fromARGB(255, 236, 233, 233)),
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Image.asset(
                      'assets/images/bird.png',
                      alignment: Alignment.center,
                    ),
                  ),
                  Text('UI/UX Designer'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Spacer(),
                      Text('Nepal'),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text('•', textScaleFactor: 1.5),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text('\$8K-10K'),
                      Spacer(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Fulltime'),
                      Text('Remote'),
                      Text('Design'),
                    ],
                  )
                ],
              ),
            ),
            BottomPart()
          ],
        ),
      ),
    );
  }
}
