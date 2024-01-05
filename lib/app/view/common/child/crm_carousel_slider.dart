import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CRM_CarouselSlider extends StatefulWidget {
  const CRM_CarouselSlider({Key? key}) : super(key: key);

  @override
  _CRM_CarouselSliderState createState() => _CRM_CarouselSliderState();
}

class _CRM_CarouselSliderState extends State<CRM_CarouselSlider> {
  @override
  Widget build(BuildContext context) {
    String basePath = "images/01/process/";
    List<String> imgList = [for (var i = 1; i <= 3; i++) "images/01/answer.png"];

    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: false, //자동재생 여부
      ),
      items: imgList!.map((item) {
        return Builder(builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              //border 를 주기 위해 decoration 사용
              border: Border.all(
                width: 3,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: ClipRRect(
              //ClipRRect : 위젯 모서리 둥글게 하기위해 사용하는 위젯
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                item!,
                fit: BoxFit.fill,


              ),
            ),
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.width * 0.3,
          );
        });
      }).toList(),
    );
  }
}