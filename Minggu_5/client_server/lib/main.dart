import 'package:client_server/data/model/article.dart';
import 'package:client_server/ui/article_detail_page.dart';
import 'package:client_server/ui/article_list_page.dart';
import 'package:client_server/ui/article_web_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ArticleListPage(),
        '/article_web': (context) => ArticleWebView(
            url: ModalRoute.of(context)?.settings.arguments as String),
        '/article_detail': (context) => ArticleDetailPage(
          ModalRoute.of(context)?.settings.arguments as Article,
        )
      },
    );
  }
}
