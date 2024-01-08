import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_carousel_slider.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_main_content.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_bottom_navigation_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text_field.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_child_profile_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
        body: CRMChildProfileButton(childName: '아동C', childId: 12341), // <- 여기에 위젯 테스트할 것 넣으세요.
        bottomNavigationBar: CRMBottomNavigationBar(),
        backgroundColor: Colors.white,
      ),
    );
  }
}