import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CRMAppBar(title: '공룡 만들기 LEVEL 2+'),
      body: Center(child: Text("This is the category page")),
    );
  }
}