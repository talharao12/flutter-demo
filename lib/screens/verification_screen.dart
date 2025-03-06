import 'package:demo/screens/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/auth_background.png'),
                  fit: BoxFit.cover,
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.black,
                  ],
                ),
              ),
            ),
          ),
          // Foreground content
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                // Logo
                Center(
                  child: Image.asset(
                    'assets/logo2.png',
                    height: 63,
                  ),
                ),
                SizedBox(height: 20),
                // Sign In Text
                Text(
                  'Verification Code',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                // SizedBox(height: 8),
                Text('Please enter the code you received through email.',style: TextStyle(
                fontSize:14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                                  ),),

              ],
            ),
          ),
          Positioned(
            top: 286,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                 children: [
                   SizedBox(height: 13,),
                   // Email TextField
                   PinCodeTextField(
                     appContext: context,

                     length: 6,
                     controller: textEditingController,
                     onChanged: (value) {
                       setState(() {
                         currentText = value;
                       });
                     },
                     pinTheme: PinTheme(
                       shape: PinCodeFieldShape.box,
                       borderRadius: BorderRadius.circular(8),

                       fieldHeight: 62,
                       fieldWidth: 51,
                       activeFillColor: Colors.white,
                       inactiveFillColor: Colors.grey[200],
                       selectedFillColor: Colors.white,
                       activeColor: Color(0xFF00B67A),
                       inactiveColor: Colors.grey[300],
                       selectedColor: Color(0xFF00B67A),
                     ),
                     enableActiveFill: true,
                     keyboardType: TextInputType.number,
                   ),
                   SizedBox(height: 24),
                   ElevatedButton(
                     onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordScreen()));
                       // Handle verification here
                       print("Current Text: $currentText");
                     },
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Color(0xFF00B67A),
                       minimumSize: Size(double.infinity, 50),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(8),
                       ),
                     ),
                     child: Text(
                       'Continue',
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 16,
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                   ),
                   SizedBox(height: 16),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         "Didn't get the code? ",
                         style: TextStyle(
                           color: Colors.black87,
                           fontSize: 14,
                         ),
                       ),
                       GestureDetector(
                         onTap: () {

                         },
                         child: Text(
                           'Resend',
                           style: TextStyle(
                             color: Color(0xFF00B67A),
                             fontSize: 14,
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                       ),
                     ],
                   ),
                 ],
                ),
              ),
            ),
          ),
          // Back Button
          Positioned(
            top: 74,
            left: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF00B67A), // Green color
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
