import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/main_page/category_page.dart';

import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
class CRMLevelButton extends StatelessWidget {
  final String imagePath;
  final int level;

  const CRMLevelButton({Key? key, required this.imagePath, required this.level})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CategoryPage(level: this.level)),
        );
      },
      child: AspectRatio(
        aspectRatio: 1, // 1:1 비율로 정사각형을 만듭니다.
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Align(
              child: Image.asset(imagePath, width: 1000, height: 1000),
            )
        ),
      ),
    );
  }
}