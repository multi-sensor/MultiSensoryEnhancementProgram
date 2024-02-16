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
    Navigator.pushReplacementNamed(
      context,
      '/main',
    );
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
            image: AssetImage('images/background.png'), // Change to your background image path
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(child: Image.asset('images/Button/button_home.png', width: 100, height: 100), onTap :goHome),
                GestureDetector(child: Image.asset('images/Button/button_back.png',  width: 100, height: 100), onTap: goBack)
              ]
            ),
            Image.asset('images/Preview_Image/${AppValues.fileData["newCategory"][widget.category]}_${AppValues.fileData["newLevel"][widget.level]}_previewimage.png', width: 500, height: 500),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  GestureDetector(child: Image.asset('images/Button/button_next.png',  width: 200, height: 100), onTap: goNext)
                ]
            )
          ]
        )
      ),
    );
  }
}