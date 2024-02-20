import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_img_slide.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_info.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';

class ContentsPage extends StatelessWidget {
  final int level;
  final int category;

  // 생성자에서 level과 category를 매개변수로 받습니다.
  const ContentsPage({Key? key, required this.level, required this.category})
      : super(key: key);

  void goBack(BuildContext context){
    Navigator.pop(context);
  }

  void goHome(BuildContext context){
    Navigator.pushNamedAndRemoveUntil(context, '/main', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Background/background_${AppValues.fileData['level'][level]}.png'), // Change to your background image path
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(child: Image.asset('images/Button/button_home.png', height: 50, fit: BoxFit.fitHeight), onTap :(){goHome(context);}),
                  GestureDetector(child: Image.asset('images/Button/button_back.png',  height: 50, fit: BoxFit.fitHeight), onTap: (){goBack(context);})
                ]
            ),
            CRMImgSlide(category: category, level: level)
          ],
        ),
      ),
    );
  }
}
