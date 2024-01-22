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
      for (var titleEntry in titles.asMap().entries) {
        for (var levelEntry in levels.asMap().entries) {
          if (RegExp(widget.searchText, caseSensitive: false).hasMatch(AppValues.fileData[titleEntry.value][levelEntry.value]['name'])
              || RegExp(widget.searchText, caseSensitive: false).hasMatch(titleEntry.value)) {
            categoryIdxs.add([titleEntry.key, levelEntry.key]);
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
      appBar: const CRMAppBar(title: 'CREAMO'),
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
        title: AppValues.fileData[categoryName][levelName]['name'].toString(),
        imagePath: 'images/$categoryName/${categoryName}_${levelName}/${categoryName}_${levelName}_완성.png',
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

