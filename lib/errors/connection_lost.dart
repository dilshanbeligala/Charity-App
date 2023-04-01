import 'package:charity_app/screens/get_started.dart';
import 'package:flutter/material.dart';
import '../check_internet_connection.dart/check_internet_connection.dart';


class ConnectionLost extends StatefulWidget {
  //const Connection_Lost({super.key});
  const ConnectionLost({Key? key}) : super(key: key);

  @override
  State<ConnectionLost> createState() => _ConnectionLostState();
}

class _ConnectionLostState extends State<ConnectionLost> {

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    return InternetCheckWrapper(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
                height: screenHeight*0.4,
                width:screenWidth*0.4,
                margin: EdgeInsets.only(top:screenHeight*0.07),
                child: GestureDetector(
                    child: Container(
                      height: screenHeight*0.4,
                      width:screenWidth*0.4,
                      color: Colors.transparent,
                      child: FittedBox(
                        // child: SvgPicture.asset(
                        //   'assets/images/svg/connection.svg'
                        // ),
                        child:Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.cover, // Replace with your own image asset path
                  ),
                      )
                    ),
                )
              ),
            Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(
                        top:screenWidth*0.06,
                        bottom: screenWidth*0.018
                        ),
                    child: Text(
                      "Your connection are lost.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: screenWidth*0.04+10,
                          fontWeight: FontWeight.w600,
                          fontFamily: "inter"),
                    ),
                  ),
                ),
              ),
              Container(    
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(
                        top:screenWidth*0.03,
                        bottom: screenWidth*0.018
                        ),
                    child: Center(
                      child: Text(
                        "Please check your internet connection",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize:screenWidth*0.015+10,
                                    //color: HexColor('#898989'),
                            fontWeight: FontWeight.w500,
                            fontFamily: "inter"),
                      ),
                    ),
                  ),
                ),
              ),
              Container(    
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(
                        bottom: screenWidth*0.018
                        ),
                    child: Center(
                      child: Text(
                        "and try again",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize:screenWidth*0.015+10,
                                    //color: HexColor('#898989'),
                            fontWeight: FontWeight.w500,
                            fontFamily: "inter"),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                    margin: EdgeInsets.only(top:screenHeight*0.07),
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //backgroundColor: Constants.defaultBackground,
                          primary: Color.fromARGB(255, 105, 0, 98),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0)),
                         // minimumSize:
                              //Size(size.heightToWidth(20), size.heightToWidth(5)),
                        ),
                        
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => GetStarted()));},
                        
                        child: 
                        //Padding(
                          // padding: EdgeInsets.symmetric(
                          //     horizontal: size.heightToWidth(5.50)),
                          //child: 
                          Padding(
                           padding: EdgeInsets.only(left:screenWidth*0.3, right:screenWidth*0.3, top:screenHeight*0.02,bottom: screenHeight*0.02),
                            child: Text(
                              'Try Again',
                              semanticsLabel: 'Try Again',
                              style: TextStyle(
                                  letterSpacing: 0.5,
                                  fontSize:screenWidth * 0.025 +10,
                                  fontFamily: "Inter",
                                  
                                 // color: HexColor("#ffffff"),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        //),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}