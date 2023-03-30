import 'package:client_server/data/model/article.dart';
import 'package:client_server/ui/article_detail_page.dart';
import 'package:flutter/material.dart';

class CardArticle extends StatelessWidget {
  final Article article;

  const CardArticle({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          leading: Hero(
            tag: article.urlToImage!,
            child: Image.network(
              article.urlToImage!,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            article.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(article.author!),
          onTap: () => Navigator.pushNamed(
                context,
                ArticleDetailPage.routeName,
                arguments: article,
              )),
    );
  }
}
