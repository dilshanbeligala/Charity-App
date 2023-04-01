import 'package:flutter/material.dart';
import '../check_internet_connection.dart/check_internet_connection.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final insertEmailFormKey = GlobalKey<FormState>();
  // void initState() {
  //   super.initState();
  //   // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  //   _emailController = TextEditingController();
  //   _passwordController = TextEditingController();
  // }

  // void dispose() {
  //   _emailController.dispose();
  //   _passwordController.dispose();
  //   // SystemChrome.setEnabledSystemUIOverlays([]);
  //   super.dispose();
  // }

  // void _showErrorAlert(BuildContext context, String contentText) {
  //   Widget cancelButton = TextButton(
  //       onPressed: () {
  //         Navigator.pop(context);
  //       },
  //       child: Text("OK"));
  //   AlertDialog alert = AlertDialog(
  //     title: Text("OOPS..!"),
  //     content: Text(contentText),
  //     actions: [cancelButton],
  //   );

  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return alert;
  //       });
  // }

  // sendEmail() async {
  //   PageLoader.showLoader(context);
  //   final response = await AuthServices.forgetPasswordSentMail(
  //     _emailController.text,
  //   );
  //   response.when(success: (ResponseAsObject response) async {
  //     Navigator.pop(context);
  //     ScaffoldMessenger.of(context).removeCurrentSnackBar();
  //     ScaffoldMessenger.maybeOf(context)!.showSnackBar(
  //         snackBarCustom(context: context, contentText: "Email sent"));
  //     // final token = response.data.toString();\

  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //             builder: (context) =>
  //                 ChangePassword(email: _emailController.text)));

  //     /* if (token.role == 'CUSTOMER') {
  //     }}
     
  //       Navigator.pushAndRemoveUntil(
  //           context,
  //           MaterialPageRoute(builder: (context) => const AllChapters()),
  //           (route) => false);
  //     } else if (token.role == 'ADMIN') {
  //       Navigator.pushAndRemoveUntil(
  //           context,
  //           MaterialPageRoute(builder: (context) => const AdminPanel()),
  //           (route) => false);
  //     } */
  //   }, failure: (NetworkExceptions error) {
  //     Navigator.pop(context);

  //     ScaffoldMessenger.of(context).removeCurrentSnackBar();
  //     ScaffoldMessenger.maybeOf(context)!.showSnackBar(snackBarCustom(
  //         context: context,
  //         contentText: NetworkExceptions.getErrorMessage(error)));
  //   }, responseError: (ResponseError responseError) {
  //     Navigator.pop(context);

  //     ScaffoldMessenger.of(context).removeCurrentSnackBar();
  //     _showErrorAlert(context, responseError.error);
  //     // ScaffoldMessenger.maybeOf(context)!.showSnackBar(
  //     //     snackBarCustom(context: context, contentText: responseError.error));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return InternetCheckWrapper(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 105, 0, 98),
          title: Text("Forgot Password?"),
        ),
        //body: Text('Reset Password'),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: screenHeight*0.025,top: screenHeight*0.035,left:screenWidth*0.05),
              child: Text("Reset Password",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "inter")),
                    ),
             //Container(
            //   padding: EdgeInsets.all(screenWidth*0.12),
            //   child: Form(
            //       key: insertEmailFormKey,
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           TextFormField(
            //             style: TextStyle(fontSize: screenWidth*0.015+10),
            //             controller: _emailController,
            //             decoration: InputDecoration(
            //               errorStyle: TextStyle(fontSize: screenWidth*0.01+8),
                        
            //               hintText: "Email ID",
            //               hintStyle: TextStyle(
            //                 fontSize:screenWidth*0.015+10,
            //                 fontFamily: "inter",
            //                 fontWeight: FontWeight.w500,
            //               ),
            //               contentPadding: EdgeInsets.only(top: 15),
            //               border: UnderlineInputBorder(),
            //               //labelText: 'Email ID',
            //             ),
            //             validator: (value) {
            //               if (value!.isEmpty) {
            //                 return "Enter email";
            //               } else if (!RegExp(
            //                       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            //                   .hasMatch(value)) {
            //                 return "Enter correct email";
            //               } else {
            //                 return null;
            //               }
            //             },
            //           ),
            //           SizedBox(
            //             height: screenHeight*0.03,
            //           ),
            //           ElevatedButton(
            //             style: ElevatedButton.styleFrom(
                        
            //               elevation: 3,
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(32.0)),
                        
            //             ),
            //             onPressed: () {
            //               // FocusManager.instance.primaryFocus?.unfocus();
            //               // if (insertEmailFormKey.currentState!.validate()) {
            //               //  // sendEmail();
            //               // }
            //             },
            //             child: Text(
            //               'Send Code',
            //               semanticsLabel: 'Send Code',
            //               style: TextStyle(
            //                   fontWeight: FontWeight.w600,
                            
            //                   fontFamily: "inter"),
            //             ),
            //           ),
            //         ],
            //       )),
             //),
          ],
        ),
      ),
    );
  }
}
