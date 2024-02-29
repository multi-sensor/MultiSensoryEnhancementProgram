import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';

class CRMTextField extends StatelessWidget {
  final IconData iconName;
  final String hintText;
  final TextInputAction? action;
  final TextInputType? inputType;
  final bool needHide;
  final String initialValue;
  void Function(String)? keyboardSubmit;
  void Function(String)? onChanged;
  final TextEditingController controller;

  CRMTextField({
    super.key,
    required this.iconName,
    this.hintText = "테마검색", // 변경된 힌트 텍스트
    this.needHide = false,
    this.action,
    this.inputType,
    this.onChanged,
    this.keyboardSubmit,
    required this.controller,
    this.initialValue = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500, // 검색창의 너비
      height: 50, // 검색창의 높이
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black, fontSize: 14), // 글씨체 크기 조정
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20), // 여백 조정
          suffixIcon: Container(
            padding: EdgeInsets.only(right: 10), // 아이콘 우측 패딩 조정
            child: Row(
              mainAxisSize: MainAxisSize.min, // 아이콘을 오른쪽 끝에 정렬
              children: <Widget>[
                Text('|', style: TextStyle(color: AppColors.gray400, fontSize: 24)), // 텍스트 크기 조정
                SizedBox(width: 8), // 아이콘과의 간격 추가
                Icon(iconName, color: AppColors.gray400, size: 24), // 아이콘 크기 조정
              ],
            ),
          ),
        ),
        style: AppTextThemes.inputContentTextStyle,
        textInputAction: action,
        keyboardType: inputType,
        obscureText: needHide,
        autofocus: false,
        onSubmitted: keyboardSubmit,
        onChanged: onChanged,
      ),
    );
  }
}
