import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'detail/detail_page.dart';
import 'detail/frontend_screen.dart';

class ListModel {
  final IconData icon = Icons.shop;
  final String title;
  final String subtitle;
  final IconData bookmark = Icons.bookmark;
  final String jobPosition;
  final String jobType;
  final String salary;
  final String routeName;
  const ListModel({
    required this.title,
    required this.subtitle,
    required this.jobPosition,
    required this.jobType,
    required this.salary,
    required this.routeName,
  });
}

List<ListModel> jobList = [
  const ListModel(
      title: 'UI/UX Designer',
      subtitle: 'palpa • nepal',
      jobPosition: 'Designer',
      jobType: 'Onsite',
      salary: '\$8k-10k',
      routeName: '\hello'),
  const ListModel(
    title: 'UX Designer',
    subtitle: 'chitwan • nepal',
    jobPosition: 'Designer',
    jobType: 'remote',
    salary: '\$8k-10k',
    routeName: '\hello',
  ),
  const ListModel(
    title: 'Frontend',
    subtitle: 'palpa • nepal',
    jobPosition: 'Designer',
    jobType: 'onsite',
    salary: '\$8k-10k',
    routeName: FrontendScreen.routeName,
  ),
  const ListModel(
    title: 'Backend ',
    subtitle: 'rolpa • nepal',
    jobPosition: 'backend',
    jobType: 'remote',
    salary: '\$8k-10k',
    routeName: '\hello',
  ),
  const ListModel(
    title: 'Python',
    subtitle: 'palpa • nepal',
    jobPosition: 'Developer',
    jobType: 'onsite',
    salary: '\$8k-10k',
    routeName: '\hello',
  ),
  const ListModel(
    title: 'Database',
    subtitle: 'palpa • nepal',
    jobPosition: 'Developer',
    jobType: 'remote',
    salary: '\$8k-10k',
    routeName: '\hello',
  ),
  const ListModel(
    title: 'UX Designer',
    subtitle: 'palpa • nepal',
    jobPosition: 'Designer',
    jobType: 'remote',
    salary: '\$8k-10k',
    routeName: DetailPage.routeName,
  ),
];
