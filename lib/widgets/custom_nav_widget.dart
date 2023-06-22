import 'package:flutter/material.dart';

import '../model/custom_nav_model.dart';
import 'custom_nav_item_widget.dart';

class CustomNavWidget extends StatelessWidget {
  final List<CustomModel> items;

  const CustomNavWidget({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            items.length,
            (index) {
              final item = items[index];

              return CustomRowItem(
                index: index,
                title: item.title,
                icon: item.icon,
                onPress: item.onPress,
              );
            },
          ),
        ),
      ),
    );
  }
}
