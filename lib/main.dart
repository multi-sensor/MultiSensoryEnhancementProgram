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
<<<<<<< HEAD
        body: Row(
          children: [
            CRMInfo(category:'1', level:'01', imageName: '크로노 사우루스'),
          ],
        ),
=======
        body: CRMImgSlide0() ,

        // Center(
        //   child: FractionallySizedBox(
        //     //widthFactor: 0.75,
        //     //heightFactor: 0.75,
        //     child: CRMImgSlide0(), // Assuming CRMImgSlide0 is a valid widget
        //   ),
        // ),
>>>>>>> 7a0ff0c95fee4b8ffa180bd923207228f86da97b
        bottomNavigationBar: CRMBottomNavigationBar(),
        backgroundColor: Colors.white,
      ),
    );
  }
}