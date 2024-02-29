import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_info.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_string.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_text.dart';
import 'package:photo_view/photo_view.dart';
import 'package:flutter/cupertino.dart';
class ContentsPage extends StatefulWidget{
  final int level;
  final int category;

  // 생성자에서 level과 category를 매개변수로 받습니다.
  const ContentsPage({Key? key, required this.level, required this.category})
      : super(key: key);

  @override
  _ContentsPageState createState() => _ContentsPageState();
}

class _ContentsPageState extends State<ContentsPage>{
  bool isDialogOpen = false;
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
  final Color backgroundColor = AppColors.white;
  @override
  void initState() {
    super.initState();
    categoryName = AppValues.fileData['category'][widget.category];
    levelName = AppValues.fileData['level'][widget.level];
    finishedImage = 'images/Block_Image/${widget.category + 1}. $categoryName/$levelName/complete.png';
    imageName = AppValues.fileData['content'][widget.category][widget.level]['name'];
    hintList = AppValues.fileData['content'][widget.category][widget.level]['hints'];
    imageList = [for (var i = 1; i <= AppValues.fileData['content'][widget.category][widget.level]['imageNumber']; i++) 'images/Block_Image/${widget.category + 1}. $categoryName/$levelName/st$i.png'];
    imageList.add(finishedImage);
    fileList = [for (var i = 1; i <= AppValues.fileData['content'][widget.category][widget.level]['imageNumber']; i++) 'st$i'];
    fileList.add('complete');

    setCurrentHint();
  }

  void showInfo(){
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0), color: AppColors.white),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(CupertinoIcons.xmark_circle),
                  onPressed: () => Navigator.pop(context),
                  color: AppColors.orangeColor,
                  iconSize: 40.0,
                ),
              ),
              Center(
                child: Image.asset(
                  finishedImage,
                  width: MediaQuery.of(context).size.width * 0.7 - 40,
                  height: MediaQuery.of(context).size.height * 0.7 - 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showHint(imgLink){
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0), color: AppColors.white),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(CupertinoIcons.xmark_circle),
                  onPressed: () => Navigator.pop(context),
                  color: AppColors.orangeColor,
                  iconSize: 40.0,
                ),
              ),
              Center(
                child: Image.asset(
                  imgLink,
                  width: MediaQuery.of(context).size.width * 0.7 - 40,
                  height: MediaQuery.of(context).size.height * 0.7 - 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void goBack(BuildContext context){
    Navigator.pop(context);
  }

  void goHome(BuildContext context){
    Navigator.pushNamedAndRemoveUntil(context, '/main', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Background/background_${AppValues.fileData['level'][widget.level]}.png'), // Change to your background image path
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(child: Image.asset('images/Button/button_home.png', height: 50, fit: BoxFit.fitHeight), onTap :(){goHome(context);}),
                  GestureDetector(child: Image.asset('images/Button/button_back.png',  height: 50, fit: BoxFit.fitHeight), onTap: (){goBack(context);})
                ]
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(35, 50, 35, 0),
                    decoration: BoxDecoration(
                        color: AppColors.lvBackgroundColor[widget.level],
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: AppColors.lvBorderColor[widget.level],
                          width: 5.0, // 테두리 두께 설정
                        ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              child: Center(
                                  child: Image.asset("images/Title/${AppValues.fileData['category'][widget.category]}_${AppValues.fileData['level'][widget.level]}_title.png", height: 70, fit: BoxFit.fitHeight)
                              ),
                            ),
                            Positioned(
                                top: 10,
                                right: 0,
                                child: GestureDetector(child: Image.asset("images/Button/button_preview.png", height: 50, fit: BoxFit.fitHeight), onTap: showInfo)
                            ),
                          ],
                        ),
                        guideBar(),
                        const SizedBox(height:10),
                        Expanded(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0), // 그림자가 충분히 보일 수 있도록 패딩 추가
                                child: InkWell(
                                  onTap: decrementIdx,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColors.lvArrowShadowColor[widget.level].withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 6,
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      CupertinoIcons.chevron_back,
                                      color: AppColors.lvArrowColor[widget.level],
                                      size: 50,
                                    ),
                                  ),
                                ),
                              ),

                              Expanded(child: sliderWidget(context)),
                              Padding(
                                padding: const EdgeInsets.all(8.0), // 그림자에 충분한 공간을 제공하기 위해 패딩 추가
                                child: InkWell(
                                  onTap: incrementIdx,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColors.lvArrowShadowColor[widget.level].withOpacity(0.5), // 그림자 색상
                                          spreadRadius: 2, // 그림자가 퍼지는 범위
                                          blurRadius: 6, // 그림자의 블러 정도
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      CupertinoIcons.chevron_forward,
                                      color: AppColors.lvArrowColor[widget.level], // 아이콘 색상
                                      size: 50,
                                    ),
                                  ),
                                ),
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < imageList.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(3.0), // 버튼 간 간격을 주기 위한 패딩
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: i == _current ? AppColors.gray700 : AppColors.gray100, // 선택된 항목과 그렇지 않은 항목의 배경색
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // 모서리 둥근 정도
                        ),
                        minimumSize: Size(35, 35), // 버튼의 최소 크기를 설정하여 정사각형 모양 유지
                        maximumSize: Size(35, 35),
                        fixedSize: Size(33, 33),
                      ),
                      onPressed: () => setIdx(i),
                      child: Text(
                        "${i + 1}",
                        style: TextStyle(
                          fontFamily: 'Maplestory',
                          color: i == _current ? AppColors.white: AppColors.gray500, // 텍스트 색상
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ].toList(),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
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
                backgroundDecoration: BoxDecoration(color: AppColors.lvBackgroundColor[widget.level]),
              );
            },
          );
        },
      ).toList(),
      options: CarouselOptions(
        enableInfiniteScroll: false,
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
    Align(alignment: Alignment.centerLeft, child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset('images/CommonUse/common_stepbox.png', height: 70, fit: BoxFit.fitHeight),
        CRMText(textContent: _current != imageList.length -1? 'STEP ${_current + 1}  ' : AppString.str_finish, fontSize: 20, fontStyle: AppTextThemes.cookieRunStyle,),
      ],
    )):
    Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Align(alignment: Alignment.centerLeft, child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset('images/CommonUse/common_stepbox.png', height: 70, fit: BoxFit.fitHeight),
              CRMText(textContent: _current != imageList.length -1? 'STEP ${_current + 1}  ' : AppString.str_finish, fontSize: 20, fontStyle: AppTextThemes.cookieRunStyle,),
            ],
          )),
          ...List<Widget>.generate(_currentHint.length, (i) {
            // i는 0에서 시작하므로, hint 버튼을 위해 i + 1을 사용합니다.
            return Container(
              margin: EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {
                  showHint(_currentHint[i]);
                },
                child: Image.asset('images/Button/button_hint${i + 1}.png', height: 50, fit: BoxFit.fitHeight),
              ),
            );
          }),
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
        return hint.startsWith(fileList[_current] + '_');
      }).map((hint) {
        return 'images/Block_Image/${widget.category + 1}. $categoryName/$levelName/$hint';
      }).toList().cast<String>();
    });
  }
}