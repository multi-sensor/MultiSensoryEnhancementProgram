import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_carousel_slider.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_main_content.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_info.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_img_slide.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_bottom_navigation_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_level_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_img_button.dart';

import 'package:multi_sensory_enhancement_program/app/view/main_page/main_page.dart';
import 'package:multi_sensory_enhancement_program/app/view/main_page/category_page.dart';
import 'package:multi_sensory_enhancement_program/app/view/child/contents_page.dart';

void main() {
  runApp(MaterialApp(
    title: '다감각 향상 프로그램',
    debugShowCheckedModeBanner: false,
    initialRoute: '/main',
    routes: {
      '/main': (context) => MainPage(),
      '/contents': (context) => ContentsPage(),
      '/category': (context) => CategoryPage(),
    }
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 스위치 상태를 관리하기 위한 변수
  bool isSwitched = false; // 기본적으로 왼쪽에 위치하여 'crm_button'이 보여집니다.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '다감각 향상 프로그램',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CRMAppBar(title: '공룡 만들기 LEVEL 2+'),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //CRMInfo(category:2, level:3),
            //CRMImgSlide(category:2, level:3) ,
            Expanded(
              child: isSwitched
                  ? buildLevelButtonPage() // 스위치R :  'crm_img_button'
                  : buildImgButtonPage(), // 스위치L : 'crm_level_button'
            ),
          ],
        ),

        bottomNavigationBar: CRMBottomNavigationBar(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

