import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/main_page/main_page.dart';
import 'package:multi_sensory_enhancement_program/app/view/main_page/category_page.dart';
import 'package:multi_sensory_enhancement_program/app/view/main_page/category_search_page.dart';
import 'package:multi_sensory_enhancement_program/app/view/child/contents_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '다감각 향상 프로그램',
        debugShowCheckedModeBanner: false,
        initialRoute: '/main',
        routes: {
          '/main': (context) => const MainPage(),
          '/contents': (context) {
            final routeSettings = ModalRoute.of(context)!.settings;
            final args = routeSettings.arguments as Map<String, int>? ?? {};
            return ContentsPage(
              level: args['level'] ?? 1, // 기본값을 제공
              category: args['category'] ?? 1, // 기본값을 제공
            );
          },
          '/category': (context) {
            final routeSettings = ModalRoute.of(context)!.settings;
            final args = routeSettings.arguments as Map<String, int>? ?? {};
            return CategoryPage(
              level: args['level'] ?? 1, // 기본값을 제공
            );
          },
          '/category_search': (context) {
            final routeSettings = ModalRoute.of(context)!.settings;
            final args = routeSettings.arguments as Map<String, String>? ?? {};
            return CategorySearchPage(
              searchText: args['searchText'] ?? "", // 기본값을 제공
            );
          },
        }
    );
  }
}
