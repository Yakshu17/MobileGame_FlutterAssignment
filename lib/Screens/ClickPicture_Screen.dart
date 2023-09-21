import 'package:animal_app/Widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class ClickPictureScreen extends StatefulWidget {
  const ClickPictureScreen({Key? key}) : super(key: key);

  @override
  State<ClickPictureScreen> createState() => _ClickPictureScreenState();
}

class _ClickPictureScreenState extends State<ClickPictureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppbarWidget(preferredHeight:70,
    title: "Click Picture Screen"),

      body:Container() ,



    );
  }
}
