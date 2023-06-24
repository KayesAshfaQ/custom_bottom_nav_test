import 'package:custom_bottom_nav_test/screens/four_screen.dart';
import 'package:custom_bottom_nav_test/screens/home_screen.dart';
import 'package:custom_bottom_nav_test/screens/second_screen.dart';
import 'package:custom_bottom_nav_test/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/custom_nav_model.dart';
import '../provider/nav_item_provider.dart';
import '../widgets/custom_nav_widget.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final screens = [
    const MyHomePage(),
    const SecondScreen(),
    const ThirdScreen(),
    const FourthScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavItemProvider>(context);

    return Scaffold(
      body: screens[provider.selectedIndex],
      bottomNavigationBar: CustomNavWidget(
        items: [
          CustomModel(
            title: 'Home',
            icon: Icons.home,
            onPress: () {
              provider.selectedIndex = 0;
            },
            badgeCount: 1,
          ),
          CustomModel(
            title: 'Two',
            icon: Icons.two_k,
            onPress: () {
              provider.selectedIndex = 1;
            },
            badgeCount: 2,
          ),
          CustomModel(
            title: 'Three',
            icon: Icons.three_k,
            onPress: () {
              provider.selectedIndex = 2;
            },
            badgeCount: 5,
          ),
          CustomModel(
            title: 'Fourth',
            icon: Icons.four_k,
            onPress: () {
              provider.selectedIndex = 3;
            },
            badgeCount: 7,
          ),
        ],
      ),
    );
  }
}
