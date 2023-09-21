import 'package:animal_app/Screens/ClickPicture_Screen.dart';
import 'package:animal_app/Widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(preferredHeight:70, title: "Home Screen"),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:Column(
          children: [
            const SizedBox(height: 650,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.055,
                width: MediaQuery.of(context).size.width*0.45,
              child: ElevatedButton(onPressed: (){
                //function
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ClickPictureScreen(),));
              }, style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white, // Change the text color
                padding: const EdgeInsets.all(10.0),
                textStyle: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
                  child:const Text("Share your meal",
                    style: TextStyle(fontFamily: 'Andika'),)),
            )
          ],
        ),
      ),
    );
  }
}
