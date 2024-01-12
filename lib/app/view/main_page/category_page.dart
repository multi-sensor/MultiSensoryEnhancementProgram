import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';

class CategoryPage extends StatelessWidget {
  final int level;

  // 생성자에서 level과 category를 매개변수로 받습니다.
  CategoryPage({Key? key, required this.level}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CRMAppBar(title: '공룡 만들기 LEVEL 2+'),
      body: Center(child: Column(
        children: [
          Text(level.toString()),
        ],
      )),
    );
  }
}