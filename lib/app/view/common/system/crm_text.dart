import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';

class CRMText extends StatelessWidget {
  final String textContent;
  final double fontSize;
  final TextStyle fontStyle;

  const CRMText({
    Key? key,
    required this.textContent,
    required this.fontSize,
    required this.fontStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textContent,
      style: fontStyle.copyWith(fontSize: fontSize),
    );
  }
}

// Example Usage:
// CustomTextWidget(
//   textContent: '오늘의 목표',
//   fontSize: 20.0,
//   fontStyle: AppTextTheme.boldTextStyle, // Adjust with your actual text style
// )