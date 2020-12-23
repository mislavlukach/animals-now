import 'package:animals_now_test/pages/counter_page.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

List<dynamic> bottomBarItems = [
  {'index': 0, 'title': 'Counter 1', 'icon': Icons.countertops},
  {'index': 1, 'title': 'Counter 2', 'icon': Icons.countertops},
  {'index': 2, 'title': 'Counter 3', 'icon': Icons.countertops},
];

class BottomBarNavigator extends StatefulWidget {
  @override
  BottomBarNavigatorState createState() => BottomBarNavigatorState();
}

class BottomBarNavigatorState extends State<BottomBarNavigator>
    with SingleTickerProviderStateMixin {
  int activeIndex = 0;

  changeRoute(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('1');
    return Scaffold(
      body: Center(
        child: <Widget>[
          CounterPage(index: 0),
          CounterPage(index: 1),
          CounterPage(index: 2),
        ].elementAt(activeIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: activeIndex,
        backgroundColor: ThemeColors.primaryColor,
        selectedItemColor: ThemeColors.secondary,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        onTap: changeRoute,
        items: bottomBarItems.map((item) {
          return BottomNavigationBarItem(
            backgroundColor: ThemeColors.primaryColor,
            icon: Icon(item["icon"]),
            label: item["title"],
          );
        }).toList(),
      ),
    );
  }
}
