import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_string.dart';

class CRMInfo extends StatefulWidget {
  final int category;
  final int level;

  const CRMInfo({
    Key? key,
    required this.category,
    required this.level,
  }) : super(key: key);



  @override
  _CRMInfoState createState() => _CRMInfoState();
}

class _CRMInfoState extends State<CRMInfo> {
  bool isDialogOpen = false;
  late String categoryName;
  late String levelName;
  late String finishedImage;
  late String imageName;

  @override
  void initState() {
    super.initState();
    // categoryName = AppValues.fileData['category'][widget.category];
    categoryName = AppValues.fileData['category'][widget.category];
    levelName = AppValues.fileData['level'][widget.level];
    finishedImage = 'images/$categoryName/${categoryName}_$levelName/${categoryName}_${levelName}_완성.png';
    imageName = AppValues.fileData[categoryName][levelName]['name'];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blueBackground,
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          const CRMText(
            textContent: AppString.str_goal,
            fontSize: 20,
            fontStyle: AppTextThemes.textSemiTitleStyle,
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              if (!isDialogOpen) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                        setState(() {
                          isDialogOpen = false;
                        });
                      },
                      child: AlertDialog(
                        content: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: Center(
                            child: Image.asset(
                              finishedImage,
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: MediaQuery.of(context).size.height * 0.7,
                            ),
                          ),
                        ),
                        actions: const [],
                      ),
                    );
                    setState(() {
                      isDialogOpen = true;
                    });
                  },
                );
              }
            },
            child: Image.asset(
              finishedImage,
              width: 200, // 이미지의 너비 조정
              height: 200, // 이미지의 높이 조정
            ),
          ),
          SizedBox(height: 10),
          CRMText(
            textContent: imageName,
            fontSize: 20,
            fontStyle: AppTextThemes.textContentStyle,
          ),
        ],
      ),
    );
  }
}
