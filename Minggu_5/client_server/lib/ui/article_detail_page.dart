import 'package:client_server/data/model/article.dart';
import 'package:client_server/ui/article_web_view.dart';
import 'package:flutter/material.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routeName = '/article_detail';

  final Article article;

  const ArticleDetailPage(this.article, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Apps'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Hero(
            tag: article.urlToImage!,
            child: Image.network(
              article.urlToImage!,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.description!,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Divider(color: Colors.grey),
                Text(
                  article.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(color: Colors.grey),
                Text(
                  'Date: ${article.publishedAt}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 10),
                Text(
                  'Author: ${article.author}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Divider(color: Colors.grey),
                Text(
                  article.content ?? '',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    child: const Text('Read More'),
                    onPressed: () => Navigator.pushNamed(
                          context,
                          ArticleWebView.routeName,
                          arguments: article.url,
                        )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}