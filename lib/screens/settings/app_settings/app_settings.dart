import 'package:charity_app/check_internet_connection.dart/check_internet_connection.dart';
import 'package:flutter/material.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({super.key});

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return InternetCheckWrapper(child: Scaffold(
       appBar: AppBar(
          centerTitle: true,
            backgroundColor: Color.fromARGB(255, 105, 0, 98),
            title: Text("App Settings"),
          ),
        body:ListView(children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(top:screenHeight*0.08, left: screenWidth*0.15,right: screenWidth*0.15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('FeedBack', style: TextStyle(fontSize: 18),),
                  Icon(Icons.arrow_right_sharp,size: 30,)
                ],
              ),
            ),),

            Container(
            child: Padding(
              padding: EdgeInsets.only(top:screenHeight*0.04, left: screenWidth*0.15,right: screenWidth*0.15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Logout', style: TextStyle(fontSize: 18),),
                  Icon(Icons.arrow_right_sharp,size: 30,)
                ],
              ),
            ),)
        ],)
    ));
  }
}