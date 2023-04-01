import 'package:charity_app/check_internet_connection.dart/check_internet_connection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Others_form extends StatefulWidget {
  const Others_form({super.key});

  @override
  State<Others_form> createState() => _Others_formState();
}

class _Others_formState extends State<Others_form> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return InternetCheckWrapper(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 105, 0, 98),
          title: Text("අත්වැල"),
        ),
        body: ListView(children: [
          Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: screenHeight*0.05, bottom: screenHeight*0.05),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: screenHeight*0.15,
                  width: screenWidth*0.3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  "Add New Other Charity Requirements",
                  style: GoogleFonts.inter(color: Colors.black, fontSize: screenWidth * 0.03 + 8,),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: screenWidth*0.08, right: screenWidth*0.08),
                  child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: screenHeight*0.02),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "District",
                              prefixIcon: Icon(Icons.map),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: screenHeight*0.02),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "School/Institute",
                              prefixIcon: Icon(Icons.school),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: screenHeight*0.02),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "School/Institute Address",
                              prefixIcon: Icon(Icons.home),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: screenHeight*0.02),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "List of Items",
                              prefixIcon: Icon(Icons.list),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: screenHeight*0.02),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Number of Students",
                              prefixIcon: Icon(Icons.people),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: screenHeight*0.02),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Description about Donation",
                              prefixIcon: Icon(Icons.description),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding:EdgeInsets.only(bottom:screenHeight*0.1),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Contact Numbers",
                              prefixIcon: Icon(Icons.phone),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right:screenWidth*0.02 ,left:screenWidth*0.02),
                          child: Container(
                            height: screenHeight*0.075,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 105, 0, 98),
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  // Navigator.push(context,
                                  //     MaterialPageRoute(builder: (_) => SignIn()));
                                },
                                child: Text(
                                  "ADD",
                                  style: GoogleFonts.inter(
                                      fontSize: screenWidth * 0.03 + 8,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight*0.05,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
