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
  late ScrollController levelScrollController;
  late ScrollController imgScrollController;
  List<int> categoryIdxs = [for(int i = 0; i < AppValues.fileData["categoryTitle"].length;i++)i];
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
    categoryIdxs = [for(int i = 0; i < AppValues.fileData["categoryTitle"].length;i++)i];
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
                onChanged: _handleSearchTextChanged,
              ),
            ],
            SizedBox(height: 5),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CupertinoSwitch(
                      value: this.isSwitched,
                      onChanged: this.toggleSwitch,
                    ),
                    SizedBox(height: 5),
                    Expanded(
                      child: this.isSwitched
                          ? buildLevelButtonPage() // 여기에 컨트롤러 전달
                          : buildImgButtonPage(), // 여기에 컨트롤러 전달
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
    return Container(
      height: 800,
      width: 800,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1,
        ),
        itemCount: AppValues.fileData["levelTitle"].length,
        itemBuilder: (context, index) {
          return createLevelButtonData(index);
        },
        controller: levelScrollController, // 전달받은 컨트롤러 사용
      ),
    );
  }

  Widget createLevelButtonData(index) {
    return CRMLevelButton(
        title: AppValues.fileData["levelTitle"][index].toString()
    );
  }

  Widget buildImgButtonPage() {
    // Image 페이지 구성
    return Container(
      height: 800,
      width: 800,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
        imageIdx: categoryIdxs[index]
    );
  }

  void _handleSearchTextChanged(String text) {
    setState(() {
      searchText = text;
    });
    if(searchText.isEmpty){
      categoryIdxs = [for(int i = 0; i < AppValues.fileData["categoryTitle"].length;i++)i];
    }
    else{
      categoryIdxs = [];
      AppValues.fileData["categoryTitle"].asMap().forEach((index, title) {
        if (RegExp(searchText, caseSensitive: false).hasMatch(title)) {
          categoryIdxs.add(index);
        }
      });
    }
  }


}


