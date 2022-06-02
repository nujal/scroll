import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:class_list/pages/1st.dart';
import 'package:class_list/pages/search.dart';
import 'package:class_list/pages/contacts.dart';
import 'package:class_list/pages/settings.dart';
import 'package:class_list/pages/job_opening.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/home-page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 2;
  PageController _pageController = new PageController();
  final List<Widget> _pages = const [
    FirstPage(),
    SecondPage(),
    JobOpening(),
    FourthPage(),
    ThirdPage(),
  ];

  final items = <Widget>[
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.person),
    Icon(Icons.settings),
    Icon(Icons.contact_phone),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      extendBody: true,
      // appBar: AppBar(
      //   title: Text('Yaj Tech'),
      //   centerTitle: true,
      // ),

      // body: _pages[_currentIndex],
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeOut,
        animationDuration: const Duration(milliseconds: 300),
        height: 70,
        index: _currentIndex,
        items: items,
        backgroundColor: Colors.transparent,
        color: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.jumpToPage(_currentIndex);
        },
      ),
      // _pages[_currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   // backgroundColor: Colors.grey,
      //   selectedIconTheme: IconThemeData(color: Colors.blue),
      //   unselectedIconTheme: IconThemeData(color: Colors.grey),
      //   showSelectedLabels: true,
      //   showUnselectedLabels: true,
      //   selectedLabelStyle: TextStyle(
      //     color: Colors.blue,
      //   ),
      //   selectedItemColor: Colors.blue,
      //   unselectedItemColor: Colors.grey,
      //   unselectedLabelStyle: TextStyle(color: Colors.grey),
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: "Search",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_bag),
      //       label: "Job Opening",
      //     ),
      //   ],
      // ),
    );
  }
}
