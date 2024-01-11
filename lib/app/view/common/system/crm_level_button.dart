import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

final List<Map<String, String>> levelButtonData = [
  {'title' : 'LEVEL 1'},
  {'title' : 'LEVEL 1+'},
  {'title' : 'LEVEL 2'},
  {'title' : 'LEVEL 2+'},
  {'title' : 'LEVEL 3'},
  {'title' : 'LEVEL 3+'},
  // 데이터 추가
];

List<Widget> createlevelButtonData() {
  return levelButtonData.map((data) {
    return CRMLevelButton(
      title: data['title']!
    );
  }).toList();
}

class CRMLevelButton extends StatelessWidget {
  final String title;

  const CRMLevelButton({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewPage()),
        );
      },
      child: AspectRatio(
        aspectRatio: 1, // 1:1 비율로 정사각형을 만듭니다.
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xffffa147),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Align(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
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
        itemCount: levelButtonData.length, // 버튼 데이터의 길이
        itemBuilder: (context, index) {
          return createlevelButtonData()[index];
        },
      ),
    ),
  );
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('새 페이지'),
      ),
      body: Center(
        child: Text('이것은 새 페이지입니다.'),
      ),
    );
  }
}