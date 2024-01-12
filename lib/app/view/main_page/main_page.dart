import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_level_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_img_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text_field.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_string.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';

class MainPage extends StatelessWidget {
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
            Image.asset('images/creamo_logo.png', height: 150, width: 200),
            SizedBox(height: 10),
            CRMTextField(iconName: Icons.search, hintText: AppString.str_themeSearch),
            SizedBox(height: 5),
            Expanded(child: SwitchWidget())
          ]
        ),
      ),
    );
  }
}

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  // 스위치 상태를 관리하기 위한 변수
  bool isSwitched = false; // 기본적으로 왼쪽에 위치하여 'crm_button'이 보여집니다.

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // CRMInfo(category:2, level:3),
        // CRMImgSlide(category:2, level:3) ,
        CupertinoSwitch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value; // 스위치 상태 업데이트
            });
          },
        ),
        Expanded(
          child: isSwitched
              ? buildLevelButtonPage() // 스위치R :  'crm_img_button'
              : buildImgButtonPage(), // 스위치L : 'crm_level_button'
        ),
      ],
    );
  }
}

Widget createLevelButtonData(index) {
  return CRMLevelButton(
    title: AppValues.fileData["levelTitle"][index].toString()
  );
}

Widget buildLevelButtonPage() {
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
        itemCount: AppValues.fileData["levelTitle"].length, // 버튼 데이터의 길이
        itemBuilder: (context, index) {
          return createLevelButtonData(index);
        },
      ),
    ),
  );
}

Widget createImgButtonData(index) {
       return CRMImgButton(
          title: AppValues.fileData['categoryTitle'][index].toString(),
          imagePath: 'images/pictograms/Picto_${AppValues.fileData["pictograms"][index].toString()}.png',
          imageIdx: index
        );
}

Widget buildImgButtonPage() {
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
        itemCount: AppValues.fileData["categoryTitle"].length,
        itemBuilder: (context, index) {
          return createImgButtonData(index);
        },
      ),
    ),
  );
}