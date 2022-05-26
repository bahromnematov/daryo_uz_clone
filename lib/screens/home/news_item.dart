import 'package:daryo_app_clone/models/news.dart';
import 'package:flutter/material.dart';

import '../../models/news_response.dart';

class NewsItem extends StatelessWidget {
  final Articles article;

  const NewsItem({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Dunyo",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '${article.publishedAt} ',
                    style: const TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                  Icon(
                    Icons.visibility,
                    color: Colors.blue[300],
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text("600",
                      style:
                          const TextStyle(color: Colors.blue, fontSize: 12.0))
                ],
              )
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(article.urlToImage??'', width: 120, height: 80),
              const SizedBox(width: 12.0),
              Expanded(
                child: Text(
                  article.title!,
                  style:
                      const TextStyle(fontWeight: FontWeight.w500, height: 1.2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
