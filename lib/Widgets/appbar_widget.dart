import 'package:animal_app/Utils/constraint.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget{
  const AppbarWidget({Key? key, required this.preferredHeight, required this.title}) : super(key: key);
  final double preferredHeight;
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Colors.green,
      title:Text(title,style: const TextStyle(fontFamily: 'Andika',color: Colors.white),)
      ,centerTitle: true,
    toolbarHeight: preferredHeight,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kAppBarHeight);
}
