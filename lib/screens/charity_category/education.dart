import 'package:charity_app/screens/forms/educatinF.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 105, 0, 98),
        title: Text("අත්වැල"),),
      body: Padding(
        padding: EdgeInsets.only(left: screenWidth*0.04, right: screenWidth*0.04, top: screenHeight*0.03),
        child: Center(
          child: Column(
            children: [
              Container(
                height: screenHeight*0.07,
                decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 105, 0, 98),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Edu_form()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth*0.08),
                          child: Text(
                            "Add New Charity",
                            style: GoogleFonts.inter(
                                fontSize: screenWidth*0.03+8,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: screenWidth*0.04),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight*0.03,
              ),
              Container(
                  margin: EdgeInsets.only(top: screenHeight*0.01, bottom: screenHeight*0.05),
                  width: MediaQuery.of(context).size.width,
                  height: screenHeight*0.08,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:const UnderlineInputBorder(),
                        hintText: "Search district here....",
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 105, 0, 98),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: screenWidth*0.06,
                          color:const Color.fromARGB(255, 105, 0, 98),
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
