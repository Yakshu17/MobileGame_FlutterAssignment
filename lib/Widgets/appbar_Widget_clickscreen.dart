import 'package:animal_app/Utils/constraint.dart';
import 'package:flutter/material.dart';

class AppbarWidgetClickScreen extends StatelessWidget implements PreferredSizeWidget{
  const AppbarWidgetClickScreen({Key? key, required this.preferredHeight, required this.title}) : super(key: key);
  final double preferredHeight;
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Colors.green,
      title:Text(title,style: const TextStyle(fontFamily: 'Andika',color: Colors.white),)
      ,centerTitle: true,
      toolbarHeight: preferredHeight,
      leading: IconButton(
        icon: Icon(Icons.arrow_circle_left_sharp), // Change this icon as needed
        onPressed: () {
          // Navigate back to the previous page
          Navigator.of(context).pop();
        },
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kAppBarHeight);
}
