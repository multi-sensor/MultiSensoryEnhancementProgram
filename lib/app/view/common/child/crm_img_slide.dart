import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
import 'package:photo_view/photo_view.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_string.dart';
import 'package:flutter/cupertino.dart';

class CRMImgSlide extends StatefulWidget {
  final int category;
  final int level;
  const CRMImgSlide({Key? key, required this.category, required this.level}) : super(key: key);
  @override
  State<CRMImgSlide> createState() => _CRMImgSlideState();
}

class _CRMImgSlideState extends State<CRMImgSlide> {
  int _current = 0;
  int _currentHintIdx = 0;
  late List<String> _currentHint;
  late String categoryName;
  late String levelName;
  late String finishedImage;
  late String imageName;
  late List<dynamic> hintList;
  late List<String> fileList;
  final CarouselController _controller = CarouselController();
  final CarouselController _hintController = CarouselController();
  late List<String> imageList;
  final Color backgroundColor = AppColors.sub1Color;
  @override
  void initState() {
    super.initState();
    categoryName = AppValues.fileData['category'][widget.category];
    levelName = AppValues.fileData['level'][widget.level];
    finishedImage = 'images/$categoryName/${categoryName}_$levelName/${categoryName}_${levelName}_완성.png';
    imageName = AppValues.fileData[categoryName][levelName]['name'];
    hintList = AppValues.fileData[categoryName][levelName]['hints'];
    imageList = [for (var i = 1; i <= AppValues.fileData[categoryName][levelName]['imageNumber']; i++) 'images/$categoryName/${categoryName}_$levelName/${categoryName}_${levelName}_$i.png'];
    imageList.add('images/$categoryName/${categoryName}_$levelName/${categoryName}_${levelName}_완성.png');
    fileList = [for (var i = 1; i <= AppValues.fileData[categoryName][levelName]['imageNumber']; i++) '${categoryName}_${levelName}_$i'];
    fileList.add('${categoryName}_${levelName}_완성');

    setCurrentHint();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.diagonal3Values(1.0, 3.0, 1.0),
              child: IconButton(
                icon:const Icon(CupertinoIcons.arrowtriangle_left_fill),
                onPressed:decrementIdx,
                iconSize: 50,
                color: AppColors.gray400,
                padding: EdgeInsets.only(right: 10),
                constraints: BoxConstraints(),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width*0.5,
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(30)
              ),
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  guideBar(),
                  const SizedBox(height:10),
                  Expanded(child: sliderWidget(context))
                ],
              ),
            ),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.diagonal3Values(1.0, 3.0, 1.0),
              child: IconButton(
                icon:const Icon(CupertinoIcons.arrowtriangle_right_fill),
                onPressed:incrementIdx,
                iconSize: 50,
                color: AppColors.gray400,
                padding: EdgeInsets.only(left: 10),
                constraints: BoxConstraints(),
              ),
            ),
          ],
        ),
        const SizedBox(height:10),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [for (var i = 0; i < imageList.length;i++) TextButton(child: Text("${i+1}", style: TextStyle(color: i == _current? AppColors.orangeOrigin : AppColors.gray400, fontSize: 20, fontWeight: FontWeight.bold)), onPressed:() => setIdx(i))].toList()
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
              return PhotoView(
                imageProvider: AssetImage(imgLink),
                backgroundDecoration: BoxDecoration(color: backgroundColor),
              );
            },
          );
        },
      ).toList(),
      options: CarouselOptions(
        enableInfiniteScroll: false,
        height: MediaQuery.of(context).size.height*0.5,
        viewportFraction: 1.0, //한번에 보이는 이미지 개수
        autoPlay: false, //자동으로 넘어가기 해제
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
            setCurrentHint();
          });
        },
      ),
    );
  }

  Widget guideBar(){

    return _currentHint.isEmpty?
    Align(alignment: Alignment.centerLeft, child: CRMText(textContent: _current != imageList.length -1? 'Step ${_current + 1}' : AppString.str_finish, fontSize: 20, fontStyle: AppTextThemes.sliderTitleStyle,)):
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          CRMText(textContent: _current != imageList.length -1? 'Step ${_current + 1}' : AppString.str_finish, fontSize: 20, fontStyle: AppTextThemes.sliderTitleStyle,),
          TextButton(
              style: TextButton.styleFrom(minimumSize: Size.zero),
              child: const CRMText(textContent: AppString.str_hint, fontSize: 20, fontStyle: AppTextThemes.sliderTitleStyle ),
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const CRMText(textContent: AppString.str_hint, fontSize: 20, fontStyle: AppTextThemes.sliderTitleStyle,),
                      content: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: CarouselSlider(
                            carouselController: _hintController,
                            items: _currentHint.map(
                                  (imgLink) {
                                return Builder(
                                  builder: (context) {
                                    return PhotoView(
                                      imageProvider: AssetImage(imgLink),
                                      backgroundDecoration: BoxDecoration(color: backgroundColor),
                                    );
                                  },
                                );
                              },
                            ).toList(),
                            options: CarouselOptions(
                              enableInfiniteScroll: false,
                              height: MediaQuery.of(context).size.height*0.5,
                              viewportFraction: 1.0,
                              autoPlay: false,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentHintIdx = index;
                                });
                              },
                            ),
                          )
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: const CRMText(textContent: AppString.str_close, fontSize: 20, fontStyle: AppTextThemes.sliderTitleStyle ),
                          onPressed: () {
                            Navigator.of(context).pop(); // Dialog 닫기
                          },
                        ),
                      ],
                    );
                  },
                );
              }
          ),
        ]
    );

  }


  void incrementIdx(){

    setState((){
      if(_current < imageList.length - 1){
        _controller.jumpToPage(_current+1);
      }
    });
    setCurrentHint();
  }

  void decrementIdx(){
    setState((){
      if(_current > 0){
        _controller.jumpToPage(_current-1);
      }
    });
    setCurrentHint();
  }

  void setIdx(idx){
    setState((){
      _controller.jumpToPage(idx);
    });
    setCurrentHint();
  }

  void setCurrentHint(){
    setState((){
      _currentHint = hintList.where((hint) {
        return hint.startsWith(fileList[_current]);
      }).map((hint) {
        return 'images/$categoryName/${categoryName}_$levelName/$hint';
      }).toList().cast<String>();
    });
  }
}