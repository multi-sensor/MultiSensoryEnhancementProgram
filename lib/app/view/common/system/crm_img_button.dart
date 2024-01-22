import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';

class CRMImgButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final int imageIdx;
  final bool needLevel;
  final int level;

  const CRMImgButton({Key? key, required this.title, required this.imagePath, required this.imageIdx, this.needLevel = true, this.level = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => needLevel ?
      showDialog(
        context: context,
        builder: (context) => Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          child: Container(
            padding: const EdgeInsets.all(30),
            height: 450, width: 500,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0), color: AppColors.sub1Color),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: AppColors.sub2Color,
                    ),
                    child: const Text('X'),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.0,
                    ),
                    itemCount: AppValues.fileData['levelTitle'].length, // 리스트의 길이를 사용
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.sub2Color,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextButton(
                          child: CRMText(
                              textContent: AppValues.fileData['levelTitle'][index] ?? '',
                              fontSize: 16,// 리스트에서 제목 가져오기
                              fontStyle: AppTextThemes.cookieRunStyle
                          ),
                          onPressed: (){
                            Navigator.popAndPushNamed(
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
      ) : Navigator.pushNamed(
        context,
        '/contents',
        arguments: {'level': level, 'category': imageIdx},
      ),
      child: AspectRatio(
        aspectRatio: 1, // 정사각형
        child: Container(
          padding: title == "기차 만들기" ? EdgeInsets.only(left:20.0, right:0.0, bottom: 20.0, top:20.0) : const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // 중앙에 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 가로축 중앙에 정렬
            children: <Widget>[
              SizedBox(height:10),
              Expanded(
                child: Align(
                  alignment: title == "기차 만들기" ? Alignment.centerRight : Alignment.center,
                  child: Image.asset(imagePath),
                ),
              ),
              SizedBox(height: 10),
              CRMText(
                textContent: title,
                fontSize: 20,
                fontStyle: AppTextThemes.cookieRunWhiteStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}