import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_img_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_level_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text_field.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_string.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';

class CategoryPage extends StatelessWidget {
  final int level;

  // 생성자에서 level과 category를 매개변수로 받습니다.
  CategoryPage({Key? key, required this.level}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CRMAppBar(title: 'CREAMO'),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Expanded( // Use Expanded to fill the remaining space
              child: ImgButtonPage(), // This calls your grid view of image buttons
            ),
          ],
        ),
      ),
    );
  }
}

Widget createImgButtonData(index) {
  return CRMImgButton(
      title: AppValues.fileData['level1category'][index].toString(),
      imagePath: 'images/${AppValues.fileData["category"][index].toString()}.png',
      imageIdx: index
  );
}


Widget ImgButtonPage() {
  return Scrollbar(
    child: Container(
      height: 800, // 고정 높이
      width: 800, // 고정 너비
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1,
        ),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          // 각 아이템에 대해 CRMImgButton을 반환
          return CRMImgButton(
            title: AppValues.fileData['categoryTitle'][index].toString(),
            imagePath: 'images/pictograms/Picto_${AppValues.fileData["pictograms"][index].toString()}.png',
            imageIdx: index,
          );
        },
      ),
    ),
  );
}