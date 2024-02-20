import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/system/crm_app_bar.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_img_slide.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_info.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_values.dart';
class PreviewPage extends StatefulWidget {
  final int level;
  final int category;
  const PreviewPage({Key? key, required this.level, required this.category}) : super(key: key);

  @override
  _PreviewPageState createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  int page_num = 0;

  void goBack(){
    if (page_num == 0){
      Navigator.pop(context);
    }
    else{
      setState((){page_num = 0;});
    }
  }

  void goHome(){
    Navigator.pushNamedAndRemoveUntil(context, '/main', (Route<dynamic> route) => false);
  }

  void goNext(){
    if (page_num == 0){
      setState((){page_num = 1;});
    }
    else{
      Navigator.pushNamed(
        context,
        '/contents',
        arguments: {'level': widget.level, 'category': widget.category},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Background/background_${AppValues.fileData['level'][widget.level]}_gradation.png'), // Change to your background image path
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
                GestureDetector(child: Image.asset('images/Button/button_home.png', width: 50, height: 50), onTap :goHome),
                GestureDetector(child: Image.asset('images/Button/button_back.png',  width: 50, height: 50), onTap: goBack)
              ]
            ),
            if (page_num == 0)
              previewImage()
            else
              ...completeImage(),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  GestureDetector(child: Image.asset('images/Button/button_${page_num == 0? "next":"start"}.png', height: 50, fit: BoxFit.fitHeight), onTap: goNext)
                ]
            )
          ]
        )
      ),
    );
  }

  Widget previewImage(){
    return Image.asset('images/Preview_Image/${AppValues.fileData["category"][widget.category]}_${AppValues.fileData["level"][widget.level]}_previewimage.png', width: 500, height: 500);
  }

  List<Widget> completeImage(){
    return [
      Image.asset('images/Title/${AppValues.fileData["category"][widget.category]}_${AppValues.fileData["level"][widget.level]}_title.png', height: 100, fit: BoxFit.fitHeight),
      Image.asset('images/Block_Image/${widget.category + 1}. ${AppValues.fileData["category"][widget.category]}/${AppValues.fileData["level"][widget.level]}/complete_shadow.png', width: 400, height: 400, fit: BoxFit.fitHeight)
    ];
  }
}