import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_fontweight.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
abstract class AppTextThemes {
  static const TextStyle inputHintTextStyle = TextStyle(
    color: AppColors.gray500,
    fontSize: 20,
    fontWeight: AppFontWeights.regular,
  );

  static const TextStyle inputContentTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: 20,
    fontWeight: AppFontWeights.regular,
  );

  static const TextStyle insideButtonWhiteStyle = TextStyle(
    color: AppColors.white,
    fontWeight: AppFontWeights.regular,
  );

  static const TextStyle insideButtonWhiteBoldStyle = TextStyle(
    color: AppColors.white,
    fontWeight: AppFontWeights.bold,
  );

  static const TextStyle textTitleStyle = TextStyle(
    color: AppColors.orangeOrigin,
    fontWeight: AppFontWeights.bold,
  );

  static const TextStyle sliderTitleStyle = TextStyle(
  color: AppColors.orangeOrigin,
  fontWeight: AppFontWeights.bold,
  );

  static const TextStyle textSemiTitleStyle = TextStyle(
    color: AppColors.black,
    fontWeight: AppFontWeights.bold,
  );

  static const TextStyle textContentStyle = TextStyle(
    color: AppColors.orangeOrigin,
    fontWeight: AppFontWeights.bold,
  );
=======
>>>>>>> 7a0ff0c95fee4b8ffa180bd923207228f86da97b
}