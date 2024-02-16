import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_img_slide.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_info.dart';

class ContentsPage extends StatelessWidget {
  final int level;
  final int category;

  // 생성자에서 level과 category를 매개변수로 받습니다.
  const ContentsPage({Key? key, required this.level, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CRMAppBar(title: '공룡 만들기 LEVEL 2+'),
      body: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: CRMInfo(category: category, level: level),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // 상하 중앙 정렬
                children: [
                  CRMImgSlide(category: category, level: level),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
