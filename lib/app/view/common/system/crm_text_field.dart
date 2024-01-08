import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_colors.dart';
import 'package:multi_sensory_enhancement_program/app/view/theme/app_text_theme.dart';
class CRMTextField extends StatelessWidget {
  final IconData iconName;
  final String hintText;
  final TextInputAction? action;
  final TextInputType? inputType;
  final bool needHide;
  void Function(String)? keyboardSubmit;
  void Function(String)? onChanged;
  CRMTextField({super.key, required this.iconName, this.hintText = "", this.needHide = false, this.action, this.inputType, this.onChanged, this.keyboardSubmit});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.gray300),
      width: 340,
      height: 60,
      child: Row(
        children: [
          Icon(iconName, color: AppColors.gray500),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.white,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.gray300,
                    width: 2,
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.black,
                    width: 4,
                  ),
                ),
                hintText: hintText,
                hintStyle: inputHintTextStyle,
                contentPadding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              ),
              style: inputContentTextStyle,
              textInputAction: action,
              keyboardType: inputType,
              obscureText: needHide ? true : false,
              autofocus: false,
              onSubmitted: keyboardSubmit,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }

}