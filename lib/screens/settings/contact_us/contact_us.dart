import 'package:charity_app/check_internet_connection.dart/check_internet_connection.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return InternetCheckWrapper(child: Scaffold(
      appBar: AppBar(
          centerTitle: true,
            backgroundColor: Color.fromARGB(255, 105, 0, 98),
            title: Text("Contact Us"),
          ),
      body: ListView(children: [
        Padding(
          padding:EdgeInsets.only(left:screenWidth*0.1,right:screenWidth*0.2,top:screenHeight*0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text("E-mail: ",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,),),
              ),
              Container(child: Text('info@athwela.com',style: TextStyle(fontSize: 16),),),
            ],
          ),
        ),
        
        Padding(
          padding:EdgeInsets.only(left:screenWidth*0.1,right:screenWidth*0.2,top:screenHeight*0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text("Mobile: ",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,),),
              ),
              Container(child: Text('075 577 2582',style: TextStyle(fontSize: 16),),),
            ],
          ),
        ),

        Padding(
          padding:EdgeInsets.only(left:screenWidth*0.1,top:screenHeight*0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text("Address: ",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,),),
              ),
              Container(child: Text('No:1/6, Riwikirana mawatha, Kandy.',style: TextStyle(fontSize: 16),),),
            ],
          ),
        ),

      ]),
    ));
  }
}