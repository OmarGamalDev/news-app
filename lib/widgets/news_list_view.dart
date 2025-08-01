import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile_widget.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: Newstilewidget(),
        );
      }, childCount: 10),
    );
  }
}
