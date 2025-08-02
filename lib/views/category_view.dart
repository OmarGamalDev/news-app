import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          NewsListView(),
        ],
      ),
    );
  }
}