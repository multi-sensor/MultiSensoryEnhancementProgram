import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_fontweight.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';

class CRMChildProfileButton extends StatelessWidget {
  final String childName;
  final int childId;
  const CRMChildProfileButton({super.key, required this.childName, required this.childId});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.redOrigin,
        borderRadius: BorderRadius.circular(20), // Adjust for desired rounding
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CRMText(textContent: childName, fontSize: 20.0, fontStyle: AppTextThemes.insideButtonWhiteBoldStyle),
            CRMText(textContent: childId.toString(), fontSize: 10.0, fontStyle: AppTextThemes.insideButtonWhiteStyle),
          ],
      ),
    );
  }

}