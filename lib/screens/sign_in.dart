import 'package:charity_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg2.png'), fit: BoxFit.fill)),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenHeight*0.4,
            ),
            Expanded(
                child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: screenWidth*0.1, top: screenHeight*0.02),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Join With\n   Charity Services",
                    style: GoogleFonts.inter(
                      fontSize: screenWidth*0.05+10,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 105, 0, 98),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.07,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth*0.08, right: screenWidth*0.08),
                        child: Form(
                            child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: Icon(Icons.email),
                                border: UnderlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: screenHeight*0.03,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Password",
                                prefixIcon: Icon(Icons.password),
                                border: UnderlineInputBorder(),
                              ),
                            ),
                          ],
                        )),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.09,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth*0.08, right:screenWidth*0.08),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 105, 0, 98),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => HomePage()));
                        },
                        child: Text(
                          "Join",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
