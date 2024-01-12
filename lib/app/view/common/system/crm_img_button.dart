import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text.dart';

class CRMImgButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final int imageIdx;


  const CRMImgButton({Key? key, required this.title, required this.imagePath, required this.imageIdx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: Container(
            padding: EdgeInsets.all(30),
            height: 450, width: 500,
            color: const Color(0xfffad993),
            //color: const Color(0xfff6f1ed),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('X'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.0,
                    ),
                    itemCount: AppValues.fileData['levelTitle'].length, // 리스트의 길이를 사용
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextButton(
                          child: CRMText(
                            textContent: AppValues.fileData['levelTitle'][index] ?? '',
                            fontSize: 16,// 리스트에서 제목 가져오기
                            fontStyle: AppTextThemes.cookieRunStyle
                          ),
                          onPressed: (){
                            Navigator.pushNamed(
                              context,
                              '/contents',
                              arguments: {'level': index, 'category': imageIdx},
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      child: AspectRatio(
        aspectRatio: 1, // 정사각형
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xFFFFA147),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // 상단에 정렬
              crossAxisAlignment: CrossAxisAlignment.center, // 가로축 중앙에 정렬

              children: <Widget>[
              CRMText(
                textContent: title,
                fontSize: 20,
                fontStyle: AppTextThemes.cookieRunWhiteStyle
            ),
                SizedBox(height: 10), // 텍스트와 이미지 사이의 간격
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(imagePath), // 여기에 이미지 추가
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}

