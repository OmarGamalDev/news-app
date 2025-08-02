import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/news_details_view.dart';
import 'package:news_app/widgets/news_tile_widget.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key, required this.category});
  final String category;
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  var future;
  @override
  void initState() {
    future = NewsService().getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Center(child: Text("Oops No news available")),
            ),
          );
        } else {
          final articles = snapshot.data as List<ArticleModel>;
          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 22),
                child: GestureDetector(
                  onTap: () {
                    if (articles[index].url.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NewsDetailsView(articleUrl: articles[index].url),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('الرابط غير متوفر')),
                      );
                    }
                  },
                  child: Newstilewidget(articleModel: articles[index]),
                ),
              );
            }, childCount: articles.length),
          );
        }
      },
    );
  }
}
