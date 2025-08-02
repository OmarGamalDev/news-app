import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(category),
        centerTitle: true,
        leading: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(33, 97, 95, 95),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [NewsListView(category: category)],
        ),
      ),
    );
  }
}
