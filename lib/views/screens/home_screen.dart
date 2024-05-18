import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task/views/widgets/bottom_nav_bar_item.dart';

import '../../../../core/assets/app_svgs.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/find_products_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _controller,
        dragStartBehavior: DragStartBehavior.down,
        children: const [
          Center(child: Text('Shop')),
          FindProductsScreen(),
          Center(child: Text('Favorite')),
          Center(child: Text('Account')),
        ],
      ),
      bottomNavigationBar: BottomNavBar(items: [
        BottomNavBarItem(
          svgPicturePath: AppSVGs.shop,
          label: 'Shop',
        ),
        BottomNavBarItem(
          svgPicturePath: AppSVGs.explore,
          label: 'Explore',
        ),
        BottomNavBarItem(
          svgPicturePath: AppSVGs.cart,
          label: 'Cart',
        ),
        BottomNavBarItem(
          svgPicturePath: AppSVGs.favorite,
          label: 'Favorite',
        ),
        BottomNavBarItem(
          svgPicturePath: AppSVGs.account,
          label: 'Account',
        ),
      ], pageController: _controller),
    );
  }
}
