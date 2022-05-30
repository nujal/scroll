import 'package:flutter/material.dart';

class BottomPart extends StatelessWidget {
  const BottomPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Qualifications',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '•',
                  textScaleFactor: 2,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Text(
                    'Mary realized if her calculator had a history, it would be more embarrassing than her computer browser history.',
                    style: TextStyle(fontSize: 15.0),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '•',
                  textScaleFactor: 2,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Text(
                      'Mary realized if her calculator had a history, it would be more embarrassing than her computer browser history.',
                      style: TextStyle(fontSize: 15.0)),
                )
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '•',
                  textScaleFactor: 2,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Text(
                      'Mary realized if her calculator had a history, it would be more embarrassing than her computer browser history.',
                      style: TextStyle(fontSize: 15.0)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
