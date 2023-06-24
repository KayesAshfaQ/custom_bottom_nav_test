import 'package:custom_bottom_nav_test/provider/badge_provider.dart';
import 'package:custom_bottom_nav_test/screens/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/nav_item_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavItemProvider()),
        ChangeNotifierProvider(create: (_) => BadgeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RootScreen(),
    );
  }
}
