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
  CRMTextField({super.key, required this.iconName, this.hintText = "", this.needHide = false, this.action, this.inputType, this.onChanged, this.keyboardSubmit, required this.controller, this.initialValue = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
        color: AppColors.sub2Color,
        border: Border.all(color: AppColors.gray500),
        borderRadius: BorderRadius.circular(5), // Adjust for desired rounding
      ),
      width: 400,
      height: 50,
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,// Adjust the padding for icon size
            decoration: const BoxDecoration(
              color: AppColors.gray300, // Background color for the icon
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ), // Makes it circular
            ),
            child: Align(alignment: Alignment.center, child: Icon(iconName, color: AppColors.gray500, size: 35)), // Icon color
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: AppTextThemes.inputHintTextStyle,
                  contentPadding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                  border: InputBorder.none,
                  fillColor: AppColors.white,
                  filled: true,
                ),
                style: AppTextThemes.inputContentTextStyle,
                textInputAction: action,
                keyboardType: inputType,
                obscureText: needHide,
                autofocus: false,
                onSubmitted: keyboardSubmit,
                onChanged: onChanged,
                controller: controller,
              ),
            ),
          ),
        ],
      ),
    );
  }

}