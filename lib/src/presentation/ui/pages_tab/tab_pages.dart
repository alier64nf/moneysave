import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moneysave/src/presentation/ui/pages_tab/group_page/view/group_page.dart';
import 'package:moneysave/src/presentation/ui/pages_tab/statics_page/view/statics_pg.dart';

import 'card_page/view/card_pg.dart';
import 'home_page/view/home_pg.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  List<Widget> tabsList = [
    const HomePage(),
    const CardPage(),
    const GroupPage(),
    const StadisticPage(),
  ];

  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabsList.elementAt(_bottomNavIndex),
      floatingActionButton: FloatingActionButton(
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,

        onPressed: () {},
        splashColor: Colors.white,

        child: const Icon(FontAwesomeIcons.plus),
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          FontAwesomeIcons.house,
          FontAwesomeIcons.creditCard,
          FontAwesomeIcons.peopleGroup,
          FontAwesomeIcons.gauge,
        ],
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        iconSize: 20,
        splashRadius: 35,
        splashColor: Theme.of(context).primaryColor,
        inactiveColor: Theme.of(context).disabledColor,
      ),
    );
  }
}
