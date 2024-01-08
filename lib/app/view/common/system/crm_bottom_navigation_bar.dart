import 'package:flutter/material.dart';

class CRMBottomNavigationBar extends StatelessWidget {
  const CRMBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.text_snippet),
          label: '다른 주제 둘러보기',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '완성 작품 살펴보기',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: '나만의 사진첩',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '프로필',
        ),
      ],
      selectedItemColor: Colors.black54,
      unselectedItemColor: Colors.black54,
      backgroundColor: Colors.white,
    );
  }

}