import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badge;

import '../provider/nav_item_provider.dart';

class CustomRowItem extends StatelessWidget {
  final int index;
  final String title;
  final IconData icon;
  final void Function()? onPress;
  final int badgeCount;

  const CustomRowItem({
    super.key,
    required this.index,
    required this.title,
    required this.icon,
    this.onPress,
    this.badgeCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NavItemProvider>(
      builder: (context, value, child) {
        int selectedIndex = value.selectedIndex;

        return TweenAnimationBuilder<Color?>(
          tween: ColorTween(
            begin: Colors.transparent,
            end:
                index == selectedIndex ? Colors.deepPurple : Colors.transparent,
          ),
          duration: const Duration(milliseconds: 500),
          builder: (context, color, child) => TextButton(
            onPressed: onPress,
            style: ButtonStyle(
              backgroundColor: index == selectedIndex
                  ? MaterialStateProperty.all<Color>(
                      (color ??
                          Colors
                              .transparent), // replace with your desired color
                    )
                  : null,
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              ),
            ),
            child: Container(
              //padding:const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                //color:Theme.of(context).colorScheme.primary.withOpacity(0.75),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  badge.Badge(
                    showBadge: badgeCount > 0 && index != selectedIndex,
                    position: badge.BadgePosition.topEnd(top: -12, end: -8),
                    badgeContent: Text(
                      badgeCount.toString(),
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    child: Icon(icon,
                        color: index == selectedIndex
                            ? Colors.white
                            : Colors.deepPurple),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      color: index == selectedIndex
                          ? Colors.white
                          : Colors.deepPurple,
                      fontWeight: index == selectedIndex
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
