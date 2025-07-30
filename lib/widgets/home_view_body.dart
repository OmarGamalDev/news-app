import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(
      imageUrl: 'assets/images/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(imageUrl: 'assets/images/sports.png', categoryName: 'Sports'),
    CategoryModel(imageUrl: 'assets/images/health.png', categoryName: 'Health'),
    CategoryModel(
      imageUrl: 'assets/images/business.png',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageUrl: 'assets/images/science.png',
      categoryName: 'Science',
    ),
    CategoryModel(
      imageUrl: "assets/images/general.png",
      categoryName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoryListView(categories: categories)),
          SliverToBoxAdapter(child: SizedBox(height: 30.h)),
          NewsListView(),
        ],
      ),
    );
  }
}
