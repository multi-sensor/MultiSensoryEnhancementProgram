import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_img_slide.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_bottom_navigation_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_info.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_img_slide.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '다감각 향상 프로그램',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        appBar: CRMAppBar(title: '공룡 만들기 LEVEL 2+'),
        body: Row(
          children: [
            CRMInfo(category:'공룡', level:'1', imageName: '공룡_1'),
            CRMImgSlide() ,
          ],
        ),

        bottomNavigationBar: CRMBottomNavigationBar(),
        backgroundColor: Colors.white,
      ),
    );
  }
}