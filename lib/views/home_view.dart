import 'package:flutter/material.dart';
import 'package:news_app/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News', style: TextStyle(color: Colors.black)),
            Text("Cloud", style: TextStyle(color: Colors.amber)),
          ],
        ),
      ),
      body: HomeViewBody(),
    );
  }
}
