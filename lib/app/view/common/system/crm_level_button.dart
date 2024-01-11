import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
class CRMLevelButton extends StatelessWidget {
  final String title;

  const CRMLevelButton({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewPage()),
        );
      },
      child: AspectRatio(
        aspectRatio: 1, // 1:1 비율로 정사각형을 만듭니다.
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xffffa147),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Align(
            child: CRMText(
              textContent: title,
              fontSize: 20,
              fontStyle: AppTextThemes.cookieRunWhiteStyle
            ),
          ),
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('새 페이지'),
      ),
      body: Center(
        child: Text('이것은 새 페이지입니다.'),
      ),
    );
  }
}