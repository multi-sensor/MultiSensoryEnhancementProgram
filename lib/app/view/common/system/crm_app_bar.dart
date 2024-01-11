import 'package:flutter/material.dart';

class CRMAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CRMAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.deepOrange,
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      leading: const IconButton(icon: Icon(Icons.home_filled, color: Colors.deepOrange), onPressed: null),
      actions: const [
        IconButton(icon: Icon(Icons.menu, color: Colors.black54), onPressed: null)
      ],
      shape: const Border(
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