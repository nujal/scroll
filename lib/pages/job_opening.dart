import 'package:class_list/detail/detail_page.dart';
import 'package:class_list/list_model.dart';
import 'package:flutter/material.dart';

class JobOpening extends StatelessWidget {
  const JobOpening({Key? key}) : super(key: key);
  static const routeName = '/home-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Job Opening"),
        backgroundColor: Colors.blue[300],
      ),
      body: ListView.builder(
        itemCount: jobList.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, jobList[i].routeName);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => DetailPage()));
            },
            child: Card(
              elevation: 3.0,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(jobList[i].icon, size: 32),
                    title: Text(jobList[i].title),
                    subtitle: Text(jobList[i].subtitle),
                    trailing: Icon(jobList[i].bookmark),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(jobList[i].jobPosition),
                      Text(jobList[i].jobType),
                      Text(jobList[i].salary),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemExtent: 115,
        padding: EdgeInsets.all(12),
      ),
    );
  }
}
