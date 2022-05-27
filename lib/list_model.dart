import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListModel {
  final IconData icon = Icons.shop;
  final String title;
  final String subtitle;
  final IconData bookmark = Icons.bookmark;
  final String jobPosition;
  final String jobType;
  final String salary;
  const ListModel(
      {required this.title,
      required this.subtitle,
      required this.jobPosition,
      required this.jobType,
      required this.salary});
}

List<ListModel> jobList = [
  const ListModel(
      title: 'UI/UX Designer',
      subtitle: 'palpa*nepal',
      jobPosition: 'Designer',
      jobType: 'Onsite',
      salary: '\$8k-10k'),
  const ListModel(
      title: 'UX Designer',
      subtitle: 'chitwan*nepal',
      jobPosition: 'Designer',
      jobType: 'remote',
      salary: '\$8k-10k'),
  const ListModel(
      title: 'frontend',
      subtitle: 'palpa*nepal',
      jobPosition: 'Designer',
      jobType: 'onsite',
      salary: '\$8k-10k'),
  const ListModel(
      title: 'backend ',
      subtitle: 'rolpa*nepal',
      jobPosition: 'backend',
      jobType: 'remote',
      salary: '\$8k-10k'),
  const ListModel(
      title: 'UX Designer',
      subtitle: 'palpa*nepal',
      jobPosition: 'Designer',
      jobType: 'onsite',
      salary: '\$8k-10k'),
  const ListModel(
      title: 'UI/UX Designer',
      subtitle: 'palpa*nepal',
      jobPosition: 'Designer',
      jobType: 'remote',
      salary: '\$8k-10k'),
  const ListModel(
      title: 'UX Designer',
      subtitle: 'palpa*nepal',
      jobPosition: 'Designer',
      jobType: 'remote',
      salary: '\$8k-10k'),
];
