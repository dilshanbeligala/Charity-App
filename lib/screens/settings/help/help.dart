import 'package:charity_app/check_internet_connection.dart/check_internet_connection.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return InternetCheckWrapper(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
            backgroundColor: Color.fromARGB(255, 105, 0, 98),
            title: Text("Help"),
          ),
        body: ListView(
          children: [
    
            Padding(
              padding: EdgeInsets.all(screenWidth*0.05),
              child: Container(
                child: Text('Welcome to our charity mobile application! We were thrilled that you are interested in supporting our cause and making a difference in the world. Below you will find information on how to use the app and how to get in touch with our application if you have any questions or concerns.',
                style: TextStyle(fontSize: 16),
                 textAlign: TextAlign.justify,
                ),
              ),
            ),
    
    
            Padding(
              padding: EdgeInsets.only(left:screenWidth*0.05,),
              child: Container(
                child: Text('App Navigation:',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,),),
              ),
            ),
    
    
            Padding(
              padding: EdgeInsets.all(screenWidth*0.05),
              child: Container(
                child: Text('Home: Provides some catogeries based on charities\n\nCategories: Allows you to search and add donation\n\nUser Account:To create an account, simply click on the "Profile" section and follow the prompts. Once you have created an account, you can log in and edit your profile information at any time.'
                ,style: TextStyle(fontSize: 16,),textAlign: TextAlign.justify,),
              ),
            ),
    
            Padding(
              padding: EdgeInsets.only(left:screenWidth*0.05,),
              child: Container(
                child: Text('FAQ:',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,),),
              ),
            ),
    
    
            Padding(
              padding: EdgeInsets.all(screenWidth*0.05),
              child: Container(
                child: Text('How do I make a donation?\nTo make a donation, simply click on the "Category" section and follow the prompts. You can choose to make a one-time or recurring donation and get infomation to donate.\n\nHow do I volunteer?\nTo volunteer, click on the "Add new charity" section and put charity requirements. Once you have found an opportunity that interests you, get information and do donation.\n\nTroubleshooting:\nI can not log in to my account\nIf you are having trouble logging in, try resetting your password by clicking "Forgot Password" on the login page. If that does not work, contact us'
                ,style: TextStyle(fontSize: 16,),textAlign: TextAlign.justify,),
              ),
            ),
    
            Padding(
              padding: EdgeInsets.only(left:screenWidth*0.05,),
              child: Container(
                child: Text('Feedback:',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,),),
              ),
            ),
    
    
            Padding(
              padding: EdgeInsets.all(screenWidth*0.05),
              child: Container(
                child: Text('We value your feedback! If you have any suggestions for how we can improve the app or our organization, please let us know. You can provide feedback by filling out the form on our website or by connecting with us on social media.'
                ,style: TextStyle(fontSize: 16,),textAlign: TextAlign.justify,),
              ),
            ),
    
            SizedBox(
              height: screenHeight*0.03,
            )
          ],
        ),
      ),
    );
  }
}