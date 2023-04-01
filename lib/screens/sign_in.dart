import 'package:charity_app/check_internet_connection.dart/check_internet_connection.dart';
import 'package:charity_app/forgot_password/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return InternetCheckWrapper(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: [
            SizedBox(
               child:Image(image: AssetImage('assets/images/second.png'),height: 350,width: 350,)
            ),
            Expanded(child: Column(children: [
              Container(
                  padding: EdgeInsets.only(left: screenWidth*0.1, ),
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
                  height: screenHeight*0.02,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: screenWidth*0.08, right: screenWidth*0.08),
                      child: Form(
                         key: _formKey,
                         child: Column(children: [
                          TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a valid email';
                                }
                                 bool emailValid = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value);
                                if (!emailValid) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
      
                              decoration: InputDecoration(
                                 hintText: "Email",
                                prefixIcon: Icon(Icons.email),
                                border: UnderlineInputBorder(),
                                errorStyle: TextStyle(fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              height: screenHeight*0.04,
                            ),
                             TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter password';
                                }
                                if (value.length < 6) {
                                  return 'Password must be at least 6 characters';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                 hintText: "Password",
                                prefixIcon: Icon(Icons.password),
                                border: UnderlineInputBorder(),
                                errorStyle: TextStyle(fontSize: 16),
                                suffixIcon: IconButton(
                                icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                              ),
                               obscureText: _isObscure,
                            ),
                            SizedBox(
                              height: screenHeight*0.03,
                            ),  
                            // Container(
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.end,
                            //     children: [Text("Forgot Password?",style: TextStyle(color:Color.fromARGB(255, 105, 0, 98),decoration: TextDecoration.underline),)],),
                            // ),  
                            Container(
  child: GestureDetector(
    onTap: () {
     Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()));
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Forgot Password?",
          style: TextStyle(
            color: Color.fromARGB(255, 105, 0, 98),
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    ),
  ),
),

                            SizedBox(
                              height: screenHeight*0.03,
                            ),         
                            ElevatedButton(               
                              style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 105, 0, 98),
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50), 
                              ),                   
                            ),
                            onPressed: () {                        
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(context,
                                      MaterialPageRoute(builder: (_) => HomePage()));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Processing Data',)),
                                );
                              }
                            },
                            child:  Padding(
                              padding: EdgeInsets.only(left:screenWidth*0.3, right:screenWidth*0.3, top:screenHeight*0.02,bottom: screenHeight*0.02),
                              child: Text('Join',style: GoogleFonts.inter(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),),
                            ),
                            ),
                             SizedBox(
                              height: screenHeight*0.06,
                            ),   
                         ]),
                      ),
                      )
                    ],
                  ),
                )
            ],))
          ],
        ),
      ),
    );
  }
}