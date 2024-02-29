import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_img_button.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_string.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text_field.dart';

class CategorySearchPage extends StatefulWidget {
  final String searchText;
  const CategorySearchPage({Key? key, required this.searchText}) : super(key: key);

  @override
  _CategorySearchState createState() => _CategorySearchState();
}

class _CategorySearchState extends State<CategorySearchPage> {
  late ScrollController scrollController;
  final List<String> titles = AppValues.fileData["category"];
  final List<String> levels = AppValues.fileData["level"];
  late List<List<int> > categoryIdxs = [];
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(text: widget.searchText);
    scrollController = ScrollController();
    if (widget.searchText.isEmpty || widget.searchText.length == 0){
      categoryIdxs = [];
      for (int i = 0; i < titles.length; i++) {
        for (int j = 0; j < levels.length; j++) {
          categoryIdxs.add([i, j]);
        }
      }
    }
    else{
      categoryIdxs = [];
      for (int i = 0; i < titles.length; i++) {
        for (int j = 0; j < levels.length; j++) {
          if (RegExp(widget.searchText, caseSensitive: false).hasMatch(AppValues.fileData['content'][i][j]['name'])
              || RegExp(widget.searchText, caseSensitive: false).hasMatch(AppValues.fileData['category'][i])){
            categoryIdxs.add([i, j]);
          }

        }
      }
    }
  }

  @override
  void dispose(){
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'), // Change to your background image path
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(child: Image.asset('images/Button/button_manual.png',  width: 50, height: 50), onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("개발 중입니다."),
                        duration: Duration(seconds: 2), // 메시지 표시 시간 설정
                      ),
                    );
                  }),
                  Image.asset('images/creamo_logo.png',height: 30, fit:BoxFit.fitHeight),
                  GestureDetector(child: Image.asset('images/Button/button_back.png',  width: 50, height: 50), onTap: (){Navigator.pop(context);}),
                ]
            ),
            const SizedBox(height: 20),
            Image.asset(
              'images/CommonUse/common_title.png', // 두 번째 이미지 파일 경로
              height: 80,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 20),
            CRMTextField(
                iconName: Icons.search,
                hintText: AppString.str_themeSearch,
                keyboardSubmit: _handleSearchText,
                controller: textEditingController
            ),
            const SizedBox(height: 50),
            Expanded(child: buildImgButtonPage())
          ],
        ),
      ),
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
      ),
    );
  }
  Widget createImgButtonData(index) {
    int categoryIdx = categoryIdxs[index][0];
    int levelIdx = categoryIdxs[index][1];
    String categoryName = AppValues.fileData['category'][categoryIdx];
    String levelName = AppValues.fileData['level'][levelIdx];
    return CRMImgButton(
        title: AppValues.fileData['content'][categoryIdx][levelIdx]['name'].toString(),
        imagePath: 'images/Block_Image/${categoryIdx + 1}. ${categoryName}/${levelName}/complete.png',
        imageIdx: categoryIdx,
        needLevel: false,
        level: levelIdx
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

