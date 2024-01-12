import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_string.dart';

void guide(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const CustomDialog();
    },
  );
}

class CustomDialog extends StatefulWidget {
  const CustomDialog({Key? key}) : super(key: key);
  @override
  State<CustomDialog> createState() => CustomDialogState();
}

class CustomDialogState extends State<CustomDialog> {
  final List<String> images = [
    'images/01/process/1.png',
    'images/01/process/2.png',
    'images/01/process/3.png',
    'images/pictograms/Picto_집만들기.png',
    'images/pictograms/Picto_악기만들기.png',
    'images/01/answer.png',
    'images/pictograms/Picto_train.png',
  ];

  double percent = 0.0; // Added variable to track the percentage

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //setState((){percent = 0.0;});
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppColors.sub2Color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: AppColors.black,
            offset: Offset(0, 10),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            AppString.str_guide,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.5,
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                // Update the percent variable based on the current index
                setState((){
                  percent = images.isEmpty? 0.0: (index + 1) / images.length;
                });
              },
            ),
            items: images.map((item) => Image.asset(item, fit: BoxFit.cover)).toList(),
          ),
          const SizedBox(height: 15),
          LinearPercentIndicator(
            alignment: MainAxisAlignment.center,
            width: 700,
            animation: false,
            animationDuration: 1200,
            lineHeight: 30.0,
            percent: percent,
            center: Text('${(percent * 100).toInt()}%'
            , style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            barRadius: const Radius.circular(16.0),
            backgroundColor: AppColors.gray300,
            progressColor: AppColors.mainColor,
          ),
          const SizedBox(height: 22),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                AppString.str_close,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
