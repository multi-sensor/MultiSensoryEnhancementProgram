import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_level_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_img_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text_field.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_string.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CRMAppBar(title: 'CREAMO'),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Image.asset('images/creamo_logo.png', height: 150, width: 200),
            if(!isSwitched) ...[
              SizedBox(height: 10),
              CRMTextField(
                iconName: Icons.search,
                hintText: AppString.str_themeSearch,
              ),
            ],
            SizedBox(height: 5),
            Expanded(
                child: SwitchWidget(
                  isSwitched: isSwitched, // Pass state down
                  onToggle: toggleSwitch, // Pass callback
                )
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchWidget extends StatefulWidget {
  final bool isSwitched;
  final Function(bool) onToggle;

  const SwitchWidget({super.key, required this.isSwitched, required this.onToggle});

  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CupertinoSwitch(
          value: widget.isSwitched,
          onChanged: widget.onToggle,
        ),
        Expanded(
          child: widget.isSwitched
              ? buildLevelButtonPage()
              : buildImgButtonPage(),
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