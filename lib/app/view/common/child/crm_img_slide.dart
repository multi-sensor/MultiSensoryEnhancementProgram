import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';

class CRMImgSlide extends StatefulWidget {
  const CRMImgSlide({Key? key}) : super(key: key);

  @override
  State<CRMImgSlide> createState() => _CRMImgSlideState();
}

class _CRMImgSlideState extends State<CRMImgSlide> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<String> imageList = [
    "images/공룡/1/공룡_1-1.png",
    "images/공룡/1/공룡_1-2.png",
    "images/공룡/1/공룡_1-3.png",
    "images/공룡/1/공룡_1-4.png",
    "images/공룡/1/공룡_1-완성.png",
    // Add more images as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(icon:const Icon(Icons.arrow_left), onPressed:decrementIdx, iconSize: 100, color: AppColors.gray500),

              Container(
                height: MediaQuery.of(context).size.height*0.5,
                width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  color: AppColors.orangeBackground,
                  borderRadius: BorderRadius.circular(30)
                ),
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(alignment: Alignment.centerLeft, child: CRMText(textContent: 'Step ${this._current + 1}', fontSize: 20, fontStyle: AppTextThemes.sliderTitleStyle,)),
                    Stack(
                      children: [
                        sliderWidget(context),
                      ],
                    ),
                  ],
                ),
              ),


              IconButton(icon:const Icon(Icons.arrow_right), onPressed:incrementIdx, iconSize: 100, color: AppColors.gray500)
            ],
          ),
          // Move the progress bar below the box
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [for (var i = 0; i < imageList.length;i++) IconButton(icon:Icon(Icons.horizontal_rule), onPressed:() => setIdx(i), iconSize: 50, color: i == this._current? AppColors.orangeOrigin : AppColors.gray200)].toList()
          )
        ],
      );
  }

  Widget sliderWidget(BuildContext context) {
    return CarouselSlider(
      carouselController: _controller,
      items: imageList.map(
            (imgLink) {
          return Builder(
            builder: (context) {
              return Image(
                fit: BoxFit.fitWidth,
                image: AssetImage(imgLink),
              );
            },
          );
        },
      ).toList(),
      options: CarouselOptions(
        enableInfiniteScroll: false,
        height: MediaQuery.of(context).size.height*0.3,
        viewportFraction: 1.0,
        autoPlay: false,
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
    );
  }

  Widget sliderIndicator() {
    return Column(
      children: [
        SizedBox(height: 8),
        Container(
          height: 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageList.asMap().entries.map((entry) {
              final indicatorWidth = MediaQuery.of(context).size.width * 0.5 / (imageList.length + 4);
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: indicatorWidth,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.redAccent.withOpacity(_current == entry.key ? 0.9 : 0.4),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 8),
        Text(
          '${_current + 1}/${imageList.length}',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
  void incrementIdx(){

    setState((){
      if(this._current < imageList.length - 1){
        _controller.jumpToPage(_current+1);
      }
    });
  }

  void decrementIdx(){
    setState((){
      if(this._current > 0){
        _controller.jumpToPage(_current-1);
      }
    });
  }

  void setIdx(idx){
    setState((){
      _controller.jumpToPage(idx);
    });
  }
}
