
import 'package:flutter/material.dart';

import '../../../check_internet_connection.dart/check_internet_connection.dart';


class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);
  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _currentPassword;
  late TextEditingController _newPassword;
  late TextEditingController _confirmPassword;
  late bool _obscureText = false;
  late bool _obscureoldText = false;
  late bool _obscurenewText = false;
  String user = "CUSTOMER";
  @override
  void initState() {
    _currentPassword = TextEditingController();
    _newPassword = TextEditingController();
    _confirmPassword = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _currentPassword.dispose();
    _newPassword.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  // void _dopasswordReset(
  //     String oldPassword, String newPassword, String confirmPassword) async {
  //   PageLoader.showLoader(context);
  //   final result = await AuthServices.customerPasswordChange(
  //     context,
  //     user,
  //     oldPassword,
  //     newPassword,
  //     confirmPassword,
  //   );
  //   result.when(success: (ResponseAsObject response) async {
  //     Navigator.pushAndRemoveUntil(
  //         context,
  //         MaterialPageRoute(builder: (context) => const SplashScreen()),
  //         (route) => false);
  //     await SharedService.logout();
  //   }, failure: (NetworkExceptions error) {
  //     Navigator.pop(context);
  //     ScaffoldMessenger.of(context).removeCurrentSnackBar();
  //     ScaffoldMessenger.maybeOf(context)!.showSnackBar(snackBarCustom(
  //         context: context,
  //         contentText: NetworkExceptions.getErrorMessage(error)));
  //   }, responseError: (ResponseError responseError) {
  //     Navigator.pop(context);
  //     ScaffoldMessenger.of(context).removeCurrentSnackBar();
  //     ScaffoldMessenger.maybeOf(context)!.showSnackBar(
  //         snackBarCustom(context: context, contentText: responseError.error));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
 
    return InternetCheckWrapper(
      child: Scaffold(
        //extendBodyBehindAppBar: true,       
         appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 105, 0, 98),
          title: Text("Account Settings"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(top:screenHeight*0.06,right:screenWidth*0.1,left:screenWidth*0.1),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    child: Container(                
                      child: Text(
                        "Change Password",
                        textAlign: TextAlign.center,
                        style: TextStyle(                         
                            fontSize: screenWidth * 0.04 + 8,
                            fontWeight: FontWeight.w600,
                            fontFamily: "inter"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight*0.07,
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: screenWidth*0.015+10),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your current password.';
                      } else {}
                      return null;
                    },
                    controller: _currentPassword,
                    obscureText: !_obscureoldText,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontSize: 16),
                      labelText: 'Current Password',
                      labelStyle: TextStyle(
                        fontSize: screenWidth*0.015+10,                       
                      ),                   
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                                right:screenWidth*0.05,
                                top:screenWidth*0.03,
                                bottom: screenWidth*0.03
                        ),
                        child: Icon(Icons.password),                       
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_obscureoldText
                            ? Icons.visibility
                            : Icons.visibility_off),
                            iconSize: screenWidth*0.04+8,
                        onPressed: () {
                          setState(() {
                            _obscureoldText = !_obscureoldText;
                          });
                        },
                      ),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: screenWidth*0.015+10),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password is required";
                      } else if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }                   
                      else {
                        return null;
                      }
                    },
                    controller: _newPassword,
                    obscureText: !_obscurenewText,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontSize: 16),
                      labelText: 'New Password',
                      labelStyle: TextStyle(
                        fontSize: screenWidth*0.015+10,
                        
                      ),                  
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                                right:screenWidth*0.05,
                                top:screenWidth*0.03,
                                bottom: screenWidth*0.03
                        ),
                        child: Icon(Icons.password),                       
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_obscurenewText
                            ? Icons.visibility
                            : Icons.visibility_off),
                            iconSize: screenWidth*0.04+8,
                        onPressed: () {
                          setState(() {
                            _obscurenewText = !_obscurenewText;
                          });
                        },
                      ),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: screenWidth*0.015+10),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please confirm your new password';
                      }
                      if (value != _newPassword.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    controller: _confirmPassword,
                    obscureText: !_obscureText,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontSize: 16),
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(
                        fontSize: screenWidth*0.015+10,                  
                      ),                   
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                                right:screenWidth*0.05,
                                top:screenWidth*0.03,
                                bottom: screenWidth*0.03
                        ),
                        child: Icon(Icons.password),                       
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                            iconSize: screenWidth*0.04+8,
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight*0.08,
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
                            final snackBar =
                                SnackBar(content: Text('Submitting form',style: TextStyle(fontSize: screenWidth*0.015+10,),));
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
                            'Change Password',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
