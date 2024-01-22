import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
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
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0), color: AppColors.sub2Color),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Positioned(
                      child: Center(
                        child: CRMText(
                          textContent: title,
                          fontSize: 40,
                          fontStyle: AppTextThemes.cookieRunWhiteStyle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        icon: Icon(CupertinoIcons.xmark_circle),
                        onPressed: () => Navigator.pop(context),
                        color: AppColors.redOrigin,
                        iconSize: 40.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.5,
                    ),
                    itemCount: AppValues.fileData['levelTitle'].length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.sub2Color,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.levelColor[index],
                            padding: EdgeInsets.only(left: 20, right: 10)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CRMText(
                                    textContent: AppValues.fileData['levelTitle'][index] ?? '',
                                    fontSize: 10,
                                    fontStyle: AppTextThemes.cookieRunStyle,
                                  ),
                                  CRMText(
                                    textContent: AppValues.fileData[AppValues.fileData['category'][imageIdx]]
                                    [AppValues.fileData['level'][index]]['name'] ?? '',
                                    fontSize: 16,
                                    fontStyle: AppTextThemes.cookieRunStyle,
                                  ),
                                ],
                              ),
                              Icon(CupertinoIcons.arrow_right_circle_fill, color: AppColors.white, size: 50),
                            ],
                          ),
                          onPressed: () {
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
