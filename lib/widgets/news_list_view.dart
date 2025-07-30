
import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile_widget.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Newstilewidget();
      },
      itemCount: 10,
    );
  }
}