import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/app_colors.dart';
import '../../../model/bottom_nav_bar_item.dart';

part 'bottom_nav_bar_button.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
    required this.items,
    required this.pageController,
    this.onTap,
  });

  final PageController pageController;
  final List<BottomNavBarItem> items;
  final void Function(int index)? onTap;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int _index;

  @override
  void initState() {
    _index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: List.generate(
          widget.items.length,
          (index) {
            return Expanded(
              child: _BottomNavBarButton(
                isSelected: _index == index,
                barItem: widget.items[index],
                onPressed: () {
                  setState(
                    () {
                      _index = index;
                      widget.pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                      widget.onTap ?? (index);
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
