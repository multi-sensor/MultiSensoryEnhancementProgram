import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_fontweight.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
class CRMChildProfileButton extends StatelessWidget {
  final String childName;
  final int childId;
  CRMChildProfileButton({super.key, required this.childName, required this.childId});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0),
      padding: EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
        color: AppColors.redBackground,
        border: Border.all(color: AppColors.gray500),
        borderRadius: BorderRadius.circular(5), // Adjust for desired rounding
      ),
      child: Column(

      ),
    );
  }

}