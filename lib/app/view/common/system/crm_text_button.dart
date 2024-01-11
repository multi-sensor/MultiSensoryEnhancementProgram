import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CRMTextButton extends StatefulWidget {
  final String textContent;
  final double fontSize;
  final TextStyle fontStyle;
  final VoidCallback? onPressed;

  const CRMTextButton({
    Key? key,
    required this.textContent,
    required this.fontSize,
    required this.fontStyle,
    this.onPressed,
  }) : super(key: key);

  @override
  _CRMTextButtonState createState() => _CRMTextButtonState();
}

class _CRMTextButtonState extends State<CRMTextButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GFButton(
      onPressed: () {
        setState(() {
          _isPressed = !_isPressed;
        });
        widget.onPressed?.call();
      },
      text: widget.textContent,
      textStyle: widget.fontStyle.copyWith(fontSize: widget.fontSize),
      shape: GFButtonShape.standard,
      color: _isPressed ? GFColors.LIGHT : Colors.grey.shade200,
    );
  }
}

// Example Usage:
// CRMTextButton(
//   textContent: 'Press me',
//   fontSize: 16.0,
//   fontStyle: AppTextTheme.boldTextStyle, // Adjust with your actual text style
//   onPressed: () {
//     // Your onPressed functionality goes here
//     print('Button pressed!');
//   },
// )
