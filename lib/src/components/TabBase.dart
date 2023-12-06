import 'package:flutter/material.dart';
import 'package:test_flutter/src/features/Home/Home.dart';
import 'package:test_flutter/src/features/notification/NotificationScreen.dart';
import 'package:test_flutter/src/features/setting/SettingScreen.dart';

class TabBase extends StatefulWidget {
  const TabBase({super.key});

  @override
  State<TabBase> createState() => _TabBaseState();
}

class _TabBaseState extends State<TabBase> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.amber,
        selectedIndex: selected,
        onDestinationSelected: (index) {
          setState(() {
            selected = index;
          });
        },
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.home),
              selectedIcon: Icon(Icons.home_filled),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.notifications),
              selectedIcon: Icon(Icons.notifications_active),
              label: 'Notification'),
          NavigationDestination(
              icon: Icon(Icons.settings),
              selectedIcon: Icon(Icons.settings),
              label: 'Setting'),
        ],
      ),
      body: [
        const Home(),
        const NotificationScreen(),
        const SettingScreen()
      ][selected],
    );
  }
}
