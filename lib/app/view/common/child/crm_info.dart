import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_carousel_slider.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';

class CRMInfo extends StatefulWidget {
  final String category;
  final String level;
  final String imageName;

  const CRMInfo({
    Key? key,
    required this.category,
    required this.level,
    required this.imageName,
  }) : super(key: key);

  @override
  _CRMInfoState createState() => _CRMInfoState();
}

class _CRMInfoState extends State<CRMInfo> {
  bool isDialogOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blueBackground,
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          const CRMText(
            textContent: '오늘의 목표',
            fontSize: 20,
            fontStyle: AppTextThemes.textSemiTitleStyle,
          ),
          IconButton(
            icon: Image.asset(
              'images/${widget.category}/${widget.level}/${widget.category}_${widget.level}-완성.png',
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.width * 0.15,
            ),
            onPressed: () {
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
                        content: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: Center(
                            child: Image.asset(
                              'images/${widget.category}/${widget.level}/${widget.category}_${widget.level}-완성.png',
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: MediaQuery.of(context).size.height * 0.7,
                            ),
                          ),
                        ),
                        actions: [],
                      ),
                    );
                    setState(() {
                      isDialogOpen = true;
                    });
                  },
                );
              }
            },
          ),
          const CRMText(
            textContent: '공룡1',
            fontSize: 20,
            fontStyle: AppTextThemes.textContentStyle,
          ),
        ],
      ),
    );
  }
}
