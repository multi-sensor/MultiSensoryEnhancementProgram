import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CRMAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CRMAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.deepOrange,
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      leading: IconButton(icon: Icon(Icons.circle, color: Colors.deepOrange), onPressed: null),
      actions: [
        IconButton(icon: Icon(Icons.menu, color: Colors.black54), onPressed: null)
      ],
      shape: Border(
        bottom: BorderSide(
          color: Colors.black12,
          width: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}