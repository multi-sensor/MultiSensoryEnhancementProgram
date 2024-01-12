import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';

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
          MaterialPageRoute(builder: (context) => const NewPage()),
        );
      },
      child: AspectRatio(
        aspectRatio: 1, // 1:1 비율로 정사각형을 만듭니다.
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Align(
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: 'CookieRun',
                color: AppColors.sub2Color,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새 페이지'),
      ),
      body: const Center(
        child: Text('이것은 새 페이지입니다.'),
      ),
    );
  }
}