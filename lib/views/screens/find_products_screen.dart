import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task/routers.dart';

import '../../../../core/assets/app_images.dart';
import '../../core/theme/app_colors.dart';
import '../../model/category_model.dart';
import '../widgets/find_product/category_card.dart';

class FindProductsScreen extends StatelessWidget {
  const FindProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Find Products',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                  ),
                  children: [
                    CategoryCard(
                      backgroundColor: AppColors.lightGreen,
                      borderColor: AppColors.lightGreenBorder,
                      category: const CategoryModel(
                        title: 'Fresh Fruits & Vegetable',
                        image: AppImages.freshFruits,
                      ),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightOrange,
                      borderColor: AppColors.lightOrangeBorder,
                      category: const CategoryModel(
                        title: 'Cooking Oil & Ghee',
                        image: AppImages.cooking,
                      ),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightRed,
                      borderColor: AppColors.lightRedBorder,
                      category: const CategoryModel(
                        title: 'Meat & Fish',
                        image: AppImages.meetFish,
                      ),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightPurple,
                      borderColor: AppColors.lightPurpleBorder,
                      category: const CategoryModel(
                        title: 'Bakery & Snacks',
                        image: AppImages.bakerySnacks,
                      ),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightYellow,
                      borderColor: AppColors.lightYellowBorder,
                      category: const CategoryModel(
                        title: 'Dairy & Eggs',
                        image: AppImages.dairyEggs,
                      ),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightGreen2,
                      borderColor: AppColors.lightGreen2Border,
                      category: const CategoryModel(
                        title: 'Beverages',
                        image: AppImages.beverages,
                      ),
                      onPressed: () {
                        context.push(AppRouter.beveragesScreen);
                      },
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightPurple2,
                      borderColor: AppColors.lightPurple2Border,
                      category: const CategoryModel(
                        title: 'Frash Fruits & Vegetable',
                        image: AppImages.freshFruits,
                      ),
                      onPressed: () {},
                    ),
                    CategoryCard(
                      backgroundColor: AppColors.lightRed2,
                      borderColor: AppColors.lightRed2Border,
                      category: const CategoryModel(
                        title: 'Frash Fruits & Vegetable',
                        image: AppImages.freshFruits,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
