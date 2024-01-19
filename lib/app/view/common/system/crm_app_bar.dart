import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_guide.dart';

class CRMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CRMAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.mainColor,
      title: Center( // Center 위젯 추가
        child: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, '/main');
          },
          child: Image.asset('images/creamo_logo.png', width: 90, height: 130),
        ),
      ),


      actions: [
        GestureDetector(
          onTap: () {
            guide(context);
          },
          child: Image.asset(
            'images/Button_Question.png', // 이미지 경로
            width: 55,
            height: 55,
            // color: AppColors.blueOrigin, // 이미지 색상 지정(필요한 경우)
          ),
        )
      ],
      shape: const Border(
        bottom: BorderSide(
          color: AppColors.white,
          width: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}