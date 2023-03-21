import 'package:charity_app/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(.7),
            Colors.black.withOpacity(.4)
          ])),
          child: Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.05),
            child: ListView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.33,
                  ),
                  Text('"Everyone\nCan be Great\nbecause\neveryone can Serve"',
                      style: GoogleFonts.inter(
                          fontSize: screenWidth * 0.05 + 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  Text(
                    "- Martin Luther King -",
                    style: GoogleFonts.inter(
                        color: Colors.white, fontSize: screenWidth * 0.02 + 8),
                  ),
                  SizedBox(
                    height: screenHeight * 0.2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 105, 0, 98),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => SignIn()));
                          },
                          child: Text(
                            "Get Started",
                            style: GoogleFonts.inter(
                                fontSize: screenWidth * 0.03 + 8,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
