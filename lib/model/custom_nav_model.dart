import 'package:flutter/material.dart';

class CustomModel {
  final String title;
  final IconData icon;
  final void Function()? onPress;
  final int badgeCount;

  const CustomModel({
    required this.title,
    required this.icon,
    this.onPress,
    this.badgeCount = 0,
  });
}
