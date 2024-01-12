import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_bottom_navigation_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:multi_sensory_enhancement_program/app/view/main_page/main_page.dart';
import 'package:multi_sensory_enhancement_program/app/view/main_page/category_page.dart';
import 'package:multi_sensory_enhancement_program/app/view/child/contents_page.dart';

void main() {
  runApp(MyApp());
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
          '/main': (context) => MainPage(),
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
        }
    );
  }
}
