import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_level_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_img_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text_field.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_string.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isSwitched = false;
  late ScrollController levelScrollController;
  late ScrollController imgScrollController;
  List<int> categoryIdxs = [for (int i = 0; i < AppValues.fileData["categoryTitle"].length; i++) i];
  String searchText = "";

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
    levelScrollController = ScrollController(); // 초기화
    imgScrollController = ScrollController(); // 초기화
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
      appBar: const CRMAppBar(title: 'CREAMO'),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'), // Change to your background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Image.asset('images/creamo_logo.png', height: 150, width: 200),
                if (!isSwitched) ...[
                  const SizedBox(height: 10),
                  // Use Row for horizontal arrangement
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CRMTextField(
                        iconName: Icons.search,
                        hintText: AppString.str_themeSearch,
                        onChanged: _handleSearchTextChanged,
                      ),
                    ],
                  ),
                ],
                if (isSwitched)
                  SizedBox(height: 60),
                const SizedBox(height: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 750), // 스위치 위치 조정
                      child: CupertinoSwitch(
                        value: isSwitched,
                        onChanged: toggleSwitch,
                      ),
                    ),
                    const SizedBox(height: 5),
                    isSwitched ? buildLevelButtonPage() : buildImgButtonPage(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLevelButtonPage() {
    // Level 페이지 구성
    return Center(
      child: Column(
        children: [
          SizedBox(
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
          ),
        ],
      ),
    );
  }


  Widget createLevelButtonData(index) {
    return CRMLevelButton(title: AppValues.fileData["levelTitle"][index].toString(), level: index);
  }

  Widget buildImgButtonPage() {
    // Image 페이지 구성
    return Center(
      child: SizedBox(
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

  void _handleSearchTextChanged(String text) {
    setState(() {
      searchText = text;
    });
    if (searchText.isEmpty) {
      categoryIdxs = [for (int i = 0; i < AppValues.fileData["categoryTitle"].length; i++) i];
    } else {
      categoryIdxs = [];
      AppValues.fileData["categoryTitle"].asMap().forEach((index, title) {
        if (RegExp(searchText, caseSensitive: false).hasMatch(title)) {
          categoryIdxs.add(index);
        }
        /*
        else{
          String category = AppValues.fileData["category"][index];
          if(AppValues.fileData.containsKey("category")){
            List <String> levels = AppValues.fileData["level"];
            for (int i = 0; i < levels.length;i++){
              if (AppValues.fileData[category].containsKey(levels[i]) &&
                  RegExp(searchText, caseSensitive: false).hasMatch(AppValues.fileData[category][levels[i]]["name"])) {
                categoryIdxs.add(index);
                break; // 중복 추가를 방지하기 위해 추가된 카테고리 인덱스 후 루프 종료
              }
            }
          }

        }*/
      });
    }
  }
}
