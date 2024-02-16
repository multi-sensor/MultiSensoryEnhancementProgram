import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_level_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_img_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text_field.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_string.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isSwitched = false;
  late ScrollController levelScrollController;
  late ScrollController imgScrollController;
  late TextEditingController textEditingController;
  List<int> categoryIdxs = [for (int i = 0; i < AppValues.fileData["categoryTitle"].length; i++) i];
  String searchText = "";
  bool status = false;

  void toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
    if (levelScrollController.hasClients) {
      levelScrollController.jumpTo(0);
    }
    if (imgScrollController.hasClients) {
      imgScrollController.jumpTo(0);
    }
    searchText = "";
    categoryIdxs = [for (int i = 0; i < AppValues.fileData["categoryTitle"].length; i++) i];
  }



  @override
  void initState() {
    super.initState();
    levelScrollController = ScrollController();
    imgScrollController = ScrollController();
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    levelScrollController.dispose();
    imgScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CRMAppBar(title: 'creamo'),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'), // Change to your background image path
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'images/Title_CREAMOADDIBLOCK.png', // 두 번째 이미지 파일 경로
              height: 80,
              width: 600,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 10),
            if (!isSwitched) ...[
              const SizedBox(height: 10),
              // Use Row for horizontal arrangement
              /*
              CRMTextField(
                  iconName: Icons.search,
                  hintText: AppString.str_themeSearch,
                  keyboardSubmit: _handleSearchText,
                  controller: textEditingController
              ),
               */
            ],
            if (isSwitched)
              SizedBox(height: 60),
            const SizedBox(height: 5),
            Expanded(
              child: Stack(
                children: [
                  // buildLevelButtonPage() 또는 buildImgButtonPage()
                  Padding(
                    padding: EdgeInsets.only(top: 45), // Switch의 높이만큼 여백을 추가
                    child: isSwitched ? buildLevelButtonPage() : buildImgButtonPage(),
                  ),
                  // CupertinoSwitch를 오른쪽 상단에 배치
                  Positioned(
                    top: 0,
                    right: 0,
                    child: FlutterSwitch(
                      width: 70.0,
                      height: 30.0,
                      valueFontSize: 15.0,
                      toggleSize: 25.0,
                      value: status,
                      borderRadius: 15.0,
                      padding: 4.0,
                      showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          status = val;
                          isSwitched = val; // Update isSwitched when the switch is toggled
                          toggleSwitch(val); // Call your existing toggleSwitch method
                        });
                      },
                      activeText: '레벨',
                      inactiveText: '테마',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLevelButtonPage() {
    // Level 페이지 구성
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
        itemCount: AppValues.fileData["levelTitle"].length,
        itemBuilder: (context, index) {
          int newIndex = index ~/ 3 == 0? index * 2 : (index % 3) * 2 + 1;
          return createLevelButtonData(newIndex);
        },
        controller: levelScrollController, // 전달받은 컨트롤러 사용
      ),
    );
  }


  Widget createLevelButtonData(index) {
    return CRMLevelButton(
      imagePath: 'images/Button_Level/Button_${AppValues.fileData["levelTitle"][index].toString()}.png',
      level: index
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
        itemCount: categoryIdxs.length,
        itemBuilder: (context, index) {
          return createImgButtonData(index);
        },
        controller: imgScrollController, // 전달받은 컨트롤러 사용
      ),
    );
  }

  Widget createImgButtonData(index) {
    return CRMImgButton(
      title: AppValues.fileData["categoryTitle"][categoryIdxs[index]].toString(),
      imagePath: 'images/pictograms/Picto_${AppValues.fileData["pictograms"][categoryIdxs[index]].toString()}.png',
      imageIdx: categoryIdxs[index],
    );
  }

  void _handleSearchText(String text) {
    Navigator.pushNamed(
      context,
      '/category_search',
      arguments: {'searchText': text},
    );
  }
}