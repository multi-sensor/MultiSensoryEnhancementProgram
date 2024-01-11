import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

final List<Map<String, String>> imgButtonData = [
  {'title': '기차 만들기','imagePath': 'images/pictograms/Picto_train.png'},
  {'title': '집 만들기','imagePath': 'images/pictograms/Picto_home.png'},
  {'title': '악기 만들기','imagePath': 'images/pictograms/Picto_instrument.png'},
  {'title': '가전제품 만들기','imagePath': 'images/pictograms/Picto_HomeAppliance.png'},
  {'title': '공룡 만들기','imagePath': 'images/pictograms/Picto_dinosaur.png'},
  {'title': '곤충 만들기','imagePath': 'images/pictograms/Picto_train.png'},
  // 데이터 추가
];

final List<Map<String, String>> popupButtonData = [
  {'title': 'Level 1'},
  {'title': 'Level 1+'},
  {'title': 'Level 2'},
  {'title': 'Level 2+'},
  {'title': 'Level 3'},
  {'title': 'Level 3+'},
];

List<Widget> createimgButtonData() {
  return imgButtonData.map((data) {
    return CRMImgButton(
      title: data['title']!,
      imagePath: data['imagePath']!,
    );
  }).toList();
}


class CRMImgButton extends StatelessWidget {
  final String title;
  final String imagePath;

  const CRMImgButton({Key? key, required this.title, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;

    // 악기와 가전제품 이미지에 대해 특별한 크기 제한을 적용
    if (imagePath == 'images/pictograms/Picto_instrument.png' ||
        imagePath == 'images/pictograms/Picto_HomeAppliance.png') {
      imageWidget = SizedBox(
        width: 800,
        height: 800,
        child: Image.asset(imagePath),
      );
    } else {
      imageWidget = Image.asset(imagePath);
    }

    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: Container(
            padding: EdgeInsets.all(30),
            height: 450, width: 500,
            color: const Color(0xfffad993),
            //color: const Color(0xfff6f1ed),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('X'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.0,
                    ),
                    itemCount: imgButtonData.length, // 리스트의 길이를 사용
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            popupButtonData[index]['title'] ?? '', // 리스트에서 제목 가져오기
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      child: AspectRatio(
        aspectRatio: 1, // 정사각형
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFFFFA147),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // 상단에 정렬
              crossAxisAlignment: CrossAxisAlignment.center, // 가로축 중앙에 정렬

              children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
              ),
            ),
                SizedBox(height: 10), // 텍스트와 이미지 사이의 간격
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(imagePath), // 여기에 이미지 추가
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
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
        itemCount: imgButtonData.length,
        itemBuilder: (context, index) {
          return createimgButtonData()[index];
        },
      ),
    ),
  );
}