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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'), // Change to your background image path
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(child: Image.asset('images/Button/button_manual.png',  width: 50, height: 50), onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("개발 중입니다."),
                        duration: Duration(seconds: 2), // 메시지 표시 시간 설정
                      ),
                    );
                  }),
                  Image.asset('images/creamo_logo.png',height: 30, fit:BoxFit.fitHeight),
                  GestureDetector(child: Image.asset('images/Button/button_back.png',  width: 50, height: 50), onTap: (){Navigator.pop(context);}),
                ]
            ),
            const SizedBox(height: 20),
            Image.asset(
              'images/CommonUse/common_title.png', // 두 번째 이미지 파일 경로
              height: 80,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 20),
            Image.asset('images/Title/title_${AppValues.fileData['level'][level]}.png', height: 80, fit: BoxFit.fitHeight),
            const SizedBox(height: 20),
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
      title: AppValues.fileData['content'][index][level]['name'].toString(),
      imagePath: 'images/Block_Image/${index + 1}. ${categoryName}/${levelName}/complete.png',
      imageIdx: index,
      needLevel: false,
      level: level
    );
  }
}

