import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/custom_nav_model.dart';
import '../provider/nav_item_provider.dart';
import '../widgets/custom_nav_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'THE BODY',
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavWidget(
        items: [
          CustomModel(
              title: 'Home',
              icon: Icons.home,
              onPress: () {
                context.read<NavItemProvider>().selectedIndex = 0;
              }),
          CustomModel(
              title: 'Two',
              icon: Icons.two_k,
              onPress: () {
                context.read<NavItemProvider>().selectedIndex = 1;
              }),
          CustomModel(
              title: 'Three',
              icon: Icons.three_k,
              onPress: () {
                context.read<NavItemProvider>().selectedIndex = 2;
              }),
          CustomModel(
              title: 'Four',
              icon: Icons.four_k,
              onPress: () {
                context.read<NavItemProvider>().selectedIndex = 3;
              }),
        ],
      ),
    );
  }
}
