import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';

class CRMImgButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final int imageIdx;

  const CRMImgButton({Key? key, required this.title, required this.imagePath, required this.imageIdx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;

    // 악기와 가전제품 이미지에 대해 특별한 크기 제한을 적용
    if (imagePath == 'images/pictograms/Picto_instrument.png' ||
        imagePath == 'images/pictograms/Picto_HomeAppliance.png') {
      imageWidget = SizedBox(
        width: 800,
        height: 800,
        child: Image.asset(imagePath),
      );
    } else {
      imageWidget = Image.asset(imagePath);
    }

    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: Container(
            padding: const EdgeInsets.all(30),
            height: 450, width: 500,
            color: AppColors.sub1Color,
            //color: const Color(0xfff6f1ed),
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
                    itemCount: title.length, // 리스트의 길이를 사용
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.sub2Color,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            AppValues.fileData['levelTitle'][index] ?? '', // 리스트에서 제목 가져오기
                            style: const TextStyle(
                              fontFamily: 'CookieRun',
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
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
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // 상단에 정렬
              crossAxisAlignment: CrossAxisAlignment.center, // 가로축 중앙에 정렬

              children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'CookieRun',
                  color: AppColors.sub2Color,
                  fontSize: 20,
              ),
            ),
                const SizedBox(height: 10), // 텍스트와 이미지 사이의 간격
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

