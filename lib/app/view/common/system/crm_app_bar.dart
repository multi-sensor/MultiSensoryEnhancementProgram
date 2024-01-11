import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_guide.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CRMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CRMAppBar({Key? key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.orangeOrigin,
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      leading: IconButton(
        icon: Icon(Icons.house, color: AppColors.redOrigin), //홈으로 버튼
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/main');
        },
        iconSize: 35,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.info_outline_rounded, color: AppColors.blueOrigin),
          //사용 가이드 버튼
          onPressed: () {
            guide(context);
          },
          color: AppColors.blueOrigin,
          //물결색상 지정
          iconSize: 35,
        ),
      ],
      shape: const Border(
        bottom: BorderSide(
          color: AppColors.black,
          width: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}