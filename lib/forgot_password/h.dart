// import 'package:flutter/material.dart';

// import '../check_internet_connection.dart/check_internet_connection.dart';

// class ChangePassword extends StatefulWidget {
//   final String email;
//   const ChangePassword({required this.email});

//   @override
//   State<ChangePassword> createState() => _ChangePasswordState();
// }

// class _ChangePasswordState extends State<ChangePassword> {
//   late TextEditingController _otpController;
//   late TextEditingController _passwordController;
//   late TextEditingController _confirmPasswordController;
//   final insertEmailFormKey = GlobalKey<FormState>();
//   late bool _obscureText = false;
//   late bool _obscurenewText = false;

//   void initState() {
//     super.initState();
//     // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
//     _otpController = TextEditingController();
//     _passwordController = TextEditingController();
//     _confirmPasswordController = TextEditingController();
//   }

//   void dispose() {
//     _otpController.dispose();
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     // SystemChrome.setEnabledSystemUIOverlays([]);
//     super.dispose();
//   }

//   changePassword() async {
//     PageLoader.showLoader(context);
//     final response = await AuthServices.forgetPasswordChangePassword(
//         widget.email,
//         _otpController.text,
//         _passwordController.text,
//         _confirmPasswordController.text);

//     response.when(success: (ResponseAsObject response) async {
//       Navigator.pop(context);
//       ScaffoldMessenger.of(context).removeCurrentSnackBar();
//       ScaffoldMessenger.maybeOf(context)!.showSnackBar(
//           snackBarCustom(context: context, contentText: "Password changed"));
//       // final token = response.data.toString();\
//       Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (context) => const SignIn()),
//           (route) => false);
//       /* if (token.role == 'CUSTOMER') {
//       }}
     
//         Navigator.pushAndRemoveUntil(
//             context,
//             MaterialPageRoute(builder: (context) => const AllChapters()),
//             (route) => false);
//       } else if (token.role == 'ADMIN') {
//         Navigator.pushAndRemoveUntil(
//             context,
//             MaterialPageRoute(builder: (context) => const AdminPanel()),
//             (route) => false);
//       } */
//     }, failure: (NetworkExceptions error) {
//       Navigator.pop(context);

//       ScaffoldMessenger.of(context).removeCurrentSnackBar();
//       ScaffoldMessenger.maybeOf(context)!.showSnackBar(snackBarCustom(
//           context: context,
//           contentText: NetworkExceptions.getErrorMessage(error)));
//     }, responseError: (ResponseError responseError) {
//       Navigator.pop(context);

//       ScaffoldMessenger.of(context).removeCurrentSnackBar();
//       ScaffoldMessenger.maybeOf(context)!.showSnackBar(
//           snackBarCustom(context: context, contentText: responseError.error));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return InternetCheckWrapper(
//       child: Scaffold(
//         appBar: AppBar(
//                     backgroundColor: Colors.white,
//                     bottomOpacity: 0.0,
//                     elevation: 0.0,
//                     leading: GestureDetector(
//                       onTap: () {
//                         FocusManager.instance.primaryFocus?.unfocus();
//                         Navigator.pop(context);
//                       },
//                       child: Container(
//                         color: Colors.transparent,
//                         child: Container(
//                           child: Padding(
//                             padding: const EdgeInsets.all(16.0),
//                             child: SvgPicture.asset(
//                                 "assets/images/svg/back_button.svg"),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
        
//         body: 
//         Column(
//           children: [
            
//             Container(
//               padding: EdgeInsets.only(bottom: screenHeight*0.025,top: screenHeight*0.025),
//               child: Text("Set New Password",
//               style: TextStyle(
//                   fontSize: screenWidth * 0.04 + 8,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: "inter")),
//                     ),
//             Container(
//               child: Center(
//                   child: Container(
//                 padding: EdgeInsets.all(screenWidth*0.1),
//                 child: Form(
//                     key: insertEmailFormKey,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                          TextFormField(
//                           style: TextStyle(fontSize: screenWidth*0.015+10),
//                         validator: (value) {
//                               if (value!.isEmpty) {
//                                 return "OTP is required";
//                               }else {
//                                 return null;
//                               }
//                             },
//                         controller: _otpController,
                       
//                         decoration: InputDecoration(
//                           errorStyle: TextStyle(fontSize: screenWidth*0.01+8),
//                           labelText: 'OTP code',
//                           labelStyle: TextStyle(
//                             color: HexColor('#898989'),
//                             fontSize:screenWidth*0.015+10,
//                           ),
//                           focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: HexColor('#898989'))),
//                           prefixIcon:Padding(
//                               padding: EdgeInsets.only(
//                                 right:screenWidth*0.05,
//                                 top:screenWidth*0.03,
//                                 bottom: screenWidth*0.03
//                               ),
//                             child: Container(
//                               height: screenHeight*0.06,
//                               width: screenWidth*0.04,
//                               child: FittedBox(
//                                 child: SvgPicture.asset(
//                                   'assets/images/svg/otp-icon.svg',
//                                   color: HexColor('#898989'),
//                                 ),
//                               ),
//                             ),
//                           ),
      
//                         ),
//                       ),
//                         SizedBox(
//                           height: screenHeight*0.03,
//                         ),
//                         TextFormField(
//                           style: TextStyle(fontSize: screenWidth*0.015+10),
//                         validator: (value) {
//                               if (value!.isEmpty) {
//                                 return "Password is required";
//                               } else if (value.length < 6) {
//                                 return "Password must be at least 6 characters";
//                               } else if (!RegExp(
//                                       r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&]{6,40}$")
//                                   .hasMatch(value)) {
//                                 return "Password must contain both letters and digits";
//                               } else {
//                                 return null;
//                               }
//                             },
//                         controller: _passwordController,
//                         obscureText: !_obscurenewText,
//                         decoration: InputDecoration(
//                           errorStyle: TextStyle(fontSize: screenWidth*0.01+8),
//                           labelText: 'New Password',
//                           labelStyle: TextStyle(
//                             fontSize:screenWidth*0.015+10,
//                             color: HexColor('#898989'),
//                           ),
//                           focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: HexColor('#898989'))),
//                           prefixIcon: Padding(
//                             padding: EdgeInsets.only(                           
//                               right:screenWidth*0.05,
//                                 top:screenWidth*0.03,
//                                 bottom: screenWidth*0.03
//                             ),
//                             child: Container(
//                               height: screenHeight*0.06,
//                               width: screenWidth*0.04, 
//                                 child: FittedBox(
//                                   child: SvgPicture.asset(
//                                     'assets/images/svg/reset.svg',
//                                     color: HexColor('#898989'),
//                                   ),
//                                 )),
//                           ),
//                           suffixIcon: IconButton(
//                             icon: Icon(_obscurenewText
//                                 ? Icons.visibility
//                                 : Icons.visibility_off),
//                                 iconSize: screenWidth*0.04+8,
//                             onPressed: () {
//                               setState(() {
//                                 _obscurenewText = !_obscurenewText;
//                               });
//                             },
//                           ),
//                         ),
//                       ),
//                       TextFormField(
//                         style: TextStyle(fontSize: screenWidth*0.015+10),
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'Please confirm your new password';
//                           }
//                           // if (value != _newPassword) {
//                           //   return 'Passwords do not match';
//                           // }
//                           return null;
//                         },
//                         controller: _confirmPasswordController,
//                         obscureText: !_obscureText,
//                         decoration: InputDecoration(
//                           errorStyle: TextStyle(fontSize: screenWidth*0.01+8),
//                           labelText: 'Confirm Password',
//                           labelStyle: TextStyle(
//                             fontSize:screenWidth*0.015+10,
//                             color: HexColor('#898989'),
//                           ),
//                           focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: HexColor('#898989'))),
//                           prefixIcon: Padding(
//                             padding: EdgeInsets.only(  
//                               right:screenWidth*0.05,
//                                 top:screenWidth*0.03,
//                                 bottom: screenWidth*0.03                       
//                             ),
//                             child: Container(
//                               height: screenHeight*0.06,
//                               width: screenWidth*0.04,
//                                 child: FittedBox(
//                                   child: SvgPicture.asset(
//                                     'assets/images/svg/rewrite.svg',
//                                     color: HexColor('#898989'),
//                                   ),
//                                 )),
//                           ),
//                           suffixIcon: IconButton(
//                             icon: Icon(_obscureText
//                                 ? Icons.visibility
//                                 : Icons.visibility_off),
//                                 iconSize: screenWidth*0.04+8,
//                             onPressed: () {
//                               setState(() {
//                                 _obscureText = !_obscureText;
//                               });
//                             },
//                           ),
//                         ),
//                       ),
//                         SizedBox(
//                           height: screenHeight*0.04,
//                         ),
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: HexColor("#fc2c83"),
//                             elevation: 3,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(32.0)),
//                             minimumSize:
//                                 Size(size.heightToWidth(20), size.heightToWidth(5)),
//                           ),
//                           onPressed: () {
//                             if (insertEmailFormKey.currentState!.validate()) {
//                               changePassword();
//                             }
//                           },
//                           child: Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: size.heightToWidth(8.50)),
//                             child: Text(
//                               'Reset',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: size.heightToWidth(2),
//                                   fontFamily: "inter"),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )),
//               )),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
