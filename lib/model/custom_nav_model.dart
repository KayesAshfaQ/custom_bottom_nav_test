import 'package:flutter/material.dart';

class CustomModel {
  final String title;
  final IconData icon;
  final void Function()? onPress;

  const CustomModel({
    required this.title,
    required this.icon,
    this.onPress,
  });
}
