import 'package:charity_app/check_internet_connection.dart/check_internet_connection.dart';
import 'package:flutter/material.dart';

import 'reset_password.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
   bool _isObscure = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return InternetCheckWrapper(child: Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 105, 0, 98),
          title: Text("Forgot Password?"),
        ),
        body: ListView(
          children:[ Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top:screenHeight*0.05),
                child: Center(
                  child: Container(
                    child: Text('Reset Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:screenWidth*0.1,right:screenWidth*0.1,top:screenHeight*0.05),
                child: Form(
                  key:_formKey,
                  child:Column(
                    children: [
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
                                 
                    Container(                  
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 105, 0, 98),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0)),                         
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              //  Navigator.push(context,
                              //           MaterialPageRoute(builder: (_) => ResetPassword()));
                              final snackBar =
                                  SnackBar(content: Text('Sending OTP',style: TextStyle(fontSize: screenWidth*0.015+10,),));
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            
                              // _dopasswordReset(
                              //   _currentPassword.text,
                              //   _newPassword.text,
                              //   _confirmPassword.text,
                              // );
                            }
                          },
                          child: Padding(
                          padding: EdgeInsets.only(left:screenWidth*0.1, right:screenWidth*0.1, top:screenHeight*0.02,bottom: screenHeight*0.02),
                            child: Text(
                              'Request OTP',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                               fontSize: 20,
                                fontFamily: "inter",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ), 
                    SizedBox(
                                height: screenHeight*0.1,
                              ),
                    TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter OTP';
                                    }
                                    
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                     hintText: "Enter OTP",
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
                      height: screenHeight*0.04,
                    ),
                    Container(                  
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 105, 0, 98),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0)),                         
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                               Navigator.push(context,
                                        MaterialPageRoute(builder: (_) => ResetPassword()));
                              // final snackBar =
                              //     SnackBar(content: Text('Sending OTP',style: TextStyle(fontSize: screenWidth*0.015+10,),));
                              // ScaffoldMessenger.of(context).showSnackBar(snackBar);
            
                              // _dopasswordReset(
                              //   _currentPassword.text,
                              //   _newPassword.text,
                              //   _confirmPassword.text,
                              // );
                            }
                          },
                          child: Padding(
                          padding: EdgeInsets.only(left:screenWidth*0.1, right:screenWidth*0.1, top:screenHeight*0.02,bottom: screenHeight*0.02),
                            child: Text(
                              'Submit OTP',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                               fontSize: 20,
                                fontFamily: "inter",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ), 
                    SizedBox(
                                height: screenHeight*0.04,
                              ), 
                    ],
                  ),
                                
                ),
              )
            ],
          ),
        ]),
    ));
  }
}
//chatgpt+++++++++++++++++++++++++++++++++++++++++++++++++++

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:firebase_core/firebase_core.dart';

// class ForgotPasswordPage extends StatefulWidget {
//   @override
//   _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
// }

// class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _otpController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   bool _isLoading = false;
//   bool _isSentOTP = false;
//   String? _verificationId;

//   // void _resetPassword() async {
//   //   setState(() {
//   //     _isLoading = true;
//   //   });

//   //   try {
//   //     await _auth.confirmPasswordReset(
//   //       oobCode: _verificationId!,
//   //       newPassword: _passwordController.text.trim(),
//   //     );

//   //     setState(() {
//   //       _isLoading = false;
//   //     });

//   //     Fluttertoast.showToast(msg: "Password reset successful");
//   //     Navigator.pop(context);
//   //   } catch (e) {
//   //     setState(() {
//   //       _isLoading = false;
//   //     });

//   //     Fluttertoast.showToast(msg: e.toString());
//   //   }
//   // }

//   // void _sendOTP() async {
//   //   setState(() {
//   //     _isLoading = true;
//   //   });

//   //   try {
//   //     await _auth.sendPasswordResetEmail(
//   //       email: _emailController.text.trim(),
//   //       actionCodeSettings: ActionCodeSettings(
//   //         url: 'https://yourdomain.com',
//   //         androidPackageName: 'com.example.android',
//   //         iOSBundleId: 'com.example.ios',
//   //         handleCodeInApp: true,
//   //       ),
//   //     );

//   //     setState(() {
//   //       _isSentOTP = true;
//   //       _isLoading = false;
//   //     });

//   //     Fluttertoast.showToast(
//   //         msg: "An email containing an OTP has been sent to your email address");
//   //   } catch (e) {
//   //     setState(() {
//   //       _isLoading = false;
//   //     });

//   //     Fluttertoast.showToast(msg: e.toString());
//   //   }
//   // }

//   // void _verifyOTP() async {
//   //   setState(() {
//   //     _isLoading = true;
//   //   });

//   //   try {
//   //     ConfirmationResult confirmationResult =
//   //         await _auth.checkActionCode(_otpController.text.trim());

//   //     setState(() {
//   //       _isSentOTP = false;
//   //       _verificationId = confirmationResult.verificationId;
//   //       _isLoading = false;
//   //     });

//   //     Fluttertoast.showToast(msg: "OTP verified successfully");
//   //   } catch (e) {
//   //     setState(() {
//   //       _isLoading = false;
//   //     });

//   //     Fluttertoast.showToast(msg: e.toString());
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Forgot Password"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               controller: _emailController,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 labelText: "Email",
//               ),
//               enabled: !_isLoading && !_isSentOTP,
//             ),
//             SizedBox(height: 16.0),
//             if (_isSentOTP)
//               TextField(
//                 controller: _otpController,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: "OTP",
//                 ),
//                 enabled: !_isLoading,
//               ),
//             if (_isSentOTP) SizedBox(height: 16.0),
//             if (!_isSentOTP)
//               // ElevatedButton(
//               //   child: Text("Send OTP"),
//               //   //onPressed: _sendOTP,
//               // ),
//             if (_isSentOTP && !_isLoading)
//               // ElevatedButton(
//               //   child: Text("Verify"),
//               //   //onPressed: _verifyOTP,
//               // ),
//             if (_isSentOTP && !_isLoading)
//               TextField(
//                 controller: _passwordController,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: "New Password",
//                 ),
//               ),
//             SizedBox(height: 16.0),
//             //if (_isSentOTP)
//               // RaisedButton(
//               //   child: Text("Reset Password"),
//               //   onPressed: () {
//               //     if (!_isSentOTP) {
//               //       Fluttertoast.showToast(
//               //           msg: "Please enter your email and click on 'Send OTP'");
//               //       return;
//               //     }

//               //     if (_otpController.text.trim().isEmpty) {
//               //       Fluttertoast.showToast(msg: "Please enter the OTP");
//               //       return;
//               //     }

//               //     if (_passwordController.text.trim().isEmpty) {
//               //       Fluttertoast.showToast(msg: "Please enter a new password");
//               //       return;
//               //     }

//               //     // _verifyOTP();
//               //     // _resetPassword();
//               //   },
//               //),
//           ],
//         ),
//       ),
//     );
//   }
// }