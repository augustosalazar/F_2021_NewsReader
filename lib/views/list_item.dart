import 'package:F_202110_NewsReader/views/news_item.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final NewsItem news;
  ListItem(this.news);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album),
              title: Text(news.webTitle),
              subtitle: Text(news.sectionName),
            ),
          ],
        ),
      ),
    );
  }
}
