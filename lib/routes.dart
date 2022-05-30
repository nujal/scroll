import 'package:class_list/detail/detail_page.dart';
import 'package:class_list/detail/frontend_screen.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class RouteHandler {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case FrontendScreen.routeName:
        return MaterialPageRoute(builder: (context) => const FrontendScreen());
      case DetailPage.routeName:
        return MaterialPageRoute(builder: (context) => const DetailPage());
      default:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
