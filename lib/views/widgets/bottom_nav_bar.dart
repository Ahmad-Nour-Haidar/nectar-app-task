import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/theme/app_colors.dart';
import 'bottom_nav_bar_item.dart';

part '../widgets/bottom_nav_bar_button.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
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
