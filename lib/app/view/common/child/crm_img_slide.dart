import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
import 'package:photo_view/photo_view.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_string.dart';
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
  late List<String> hintList;
  late List<String> fileList;
  final CarouselController _controller = CarouselController();
  final CarouselController _hintController = CarouselController();
  late List<String> imageList;
  final Color backgroundColor = AppColors.orangeBackground;
  @override
  void initState() {
    super.initState();
    categoryName = AppValues.fileData['category'][widget.category];
    levelName = AppValues.fileData['level'][widget.level];
    finishedImage = 'images/${this.categoryName}/${this.categoryName}_${this.levelName}/${this.categoryName}_${this.levelName}_완성.png';
    imageName = AppValues.fileData[this.categoryName][this.levelName]['name'];
    hintList = AppValues.fileData[this.categoryName][this.levelName]['hints'];
    imageList = [for (var i = 1; i <= AppValues.fileData[this.categoryName][this.levelName]['imageNumber']; i++) 'images/${this.categoryName}/${this.categoryName}_${this.levelName}/${this.categoryName}_${this.levelName}_$i.png'];
    imageList.add('images/${this.categoryName}/${this.categoryName}_${this.levelName}/${this.categoryName}_${this.levelName}_완성.png');
    fileList = [for (var i = 1; i <= AppValues.fileData[this.categoryName][this.levelName]['imageNumber']; i++) '${this.categoryName}_${this.levelName}_$i'];
    fileList.add('${this.categoryName}_${this.levelName}_완성');

    setCurrentHint();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(icon:const Icon(Icons.arrow_left), onPressed:decrementIdx, iconSize: 100, color: AppColors.gray500),
              Container(
                height: MediaQuery.of(context).size.height*0.7,
                width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  color: this.backgroundColor,
                  borderRadius: BorderRadius.circular(30)
                ),
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    guideBar(),
                    Expanded(child: sliderWidget(context))
                  ],
                ),
              ),
              IconButton(icon:const Icon(Icons.arrow_right), onPressed:incrementIdx, iconSize: 100, color: AppColors.gray500)
            ],
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [for (var i = 0; i < imageList.length;i++) TextButton(child: Text("${i+1}", style: TextStyle(color: i == this._current? AppColors.orangeOrigin : AppColors.gray500, fontSize: 20, fontWeight: FontWeight.bold)), onPressed:() => setIdx(i))].toList()
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
                backgroundDecoration: BoxDecoration(color: this.backgroundColor),
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

    return _currentHint.length==0?
    Align(alignment: Alignment.centerLeft, child: CRMText(textContent: this._current != imageList.length -1? 'Step ${this._current + 1}' : AppString.str_finish, fontSize: 20, fontStyle: AppTextThemes.sliderTitleStyle,)):
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          CRMText(textContent: this._current != imageList.length -1? 'Step ${this._current + 1}' : AppString.str_finish, fontSize: 20, fontStyle: AppTextThemes.sliderTitleStyle,),
          TextButton(
            style: TextButton.styleFrom(minimumSize: Size.zero),
            child: CRMText(textContent: AppString.str_hint, fontSize: 20, fontStyle: AppTextThemes.sliderTitleStyle ),
            onPressed: (){
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: CRMText(textContent: AppString.str_hint, fontSize: 20, fontStyle: AppTextThemes.sliderTitleStyle,),
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
                                  backgroundDecoration: BoxDecoration(color: this.backgroundColor),
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
                        child: CRMText(textContent: AppString.str_close, fontSize: 20, fontStyle: AppTextThemes.sliderTitleStyle ),
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
      if(this._current < imageList.length - 1){
        _controller.jumpToPage(_current+1);
      }
    });
    setCurrentHint();
  }

  void decrementIdx(){
    setState((){
      if(this._current > 0){
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
        return 'images/${this.categoryName}/${this.categoryName}_${this.levelName}/' + hint;
      }).toList();
    });
  }
}
