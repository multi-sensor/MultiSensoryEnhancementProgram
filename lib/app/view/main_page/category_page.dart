import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_img_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';

class CategoryPage extends StatelessWidget {
  final int level;

  // 생성자에서 level과 category를 매개변수로 받습니다.
  const CategoryPage({Key? key, required this.level}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CRMAppBar(title: 'CREAMO'),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Image.asset('images/creamo_logo.png', height: 150, width: 200),
            const SizedBox(height: 5),
            Expanded(child: buildImgButtonPage())
          ],
        ),
      ),
    );
  }

  Widget buildImgButtonPage() {
    // Image 페이지 구성
    return SizedBox(
      height: 800,
      width: 800,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1,
        ),
        itemCount: AppValues.fileData['category'].length,
        itemBuilder: (context, index) {
          return createImgButtonData(index);
        },
      ),
    );
  }
  Widget createImgButtonData(index) {
    String categoryName = AppValues.fileData['category'][index].toString();
    String levelName = AppValues.fileData['level'][level].toString();
    return CRMImgButton(
      title: AppValues.fileData[categoryName][levelName]['name'].toString(),
      imagePath: 'images/$categoryName/${categoryName}_$levelName/${categoryName}_${levelName}_완성.png',
      imageIdx: index,
      needLevel: false,
      level: level
    );
  }


  Widget ImgButtonPage() {
    return Scrollbar(
      child: SizedBox(
        height: 800, // 고정 높이
        width: 800, // 고정 너비
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
}

