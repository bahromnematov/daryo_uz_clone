import 'package:daryo_app_clone/models/news.dart';
import 'package:daryo_app_clone/screens/home/news_item.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
          itemCount: News.myNews.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                NewsItem(news: News.myNews[index]),
                const Divider(thickness: 1.0),
              ],
            );
          }),
    );
  }
}
