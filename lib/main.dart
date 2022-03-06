import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_test_example/service/news_service.dart';
import 'package:unit_test_example/view/news_page.dart';
import 'package:unit_test_example/view_model/news_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => NewsChangeNotifier(NewsService()),
        child: const NewsPage(),
      ),
    );
  }
}
