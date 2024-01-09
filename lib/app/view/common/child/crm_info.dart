import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_carousel_slider.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
class CRMInfo extends StatelessWidget {
  final String category;
  final String level;
  final String imageName;
  const CRMInfo({super.key, required this.category, required this.level, required this.imageName});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blueBackground,
      margin: EdgeInsets.all(20),
      child: Column(
          children: [
            const CRMText(
              textContent: '오늘의 목표',
              fontSize: 20,
              fontStyle: AppTextThemes.textSemiTitleStyle
            ),
            IconButton(icon: Image.asset('images/${this.level}/answer.png' , width: MediaQuery.of(context).size.width * 0.2, height: MediaQuery.of(context).size.width * 0.15), onPressed: (){}),
            const CRMText(
                textContent: '크로노 사우루스',
                fontSize: 20,
                fontStyle: AppTextThemes.textContentStyle
            ),
          ]
      ),
    );
  }

}