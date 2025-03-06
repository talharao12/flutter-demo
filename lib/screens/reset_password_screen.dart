import 'package:demo/screens/password_reset.dart';
import 'package:demo/screens/verification_screen.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
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
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                // SizedBox(height: 8),
               

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
                     TextField(
                     decoration: InputDecoration(
                       filled: true,
                       fillColor: Color(0xFFF6F6F7),
                       hintText: 'New Password',
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8),
                         borderSide: BorderSide.none,
                       ),
                       suffixIcon: Icon(Icons.visibility,color: Color(0xff6E6D79),),
                     ),
                   // Password TextField
                    ),
                    SizedBox(height: 13),
                    TextField(
                     decoration: InputDecoration(
                       filled: true,
                       fillColor: Color(0xFFF6F6F7),
                       hintText: 'Confirm Password',
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8),
                         borderSide: BorderSide.none,
                       ),
                       suffixIcon: Icon(Icons.visibility,color: Color(0xff6E6D79),),
                     ),
                   // Password TextField
                    ),
                    SizedBox(height: 13),


                    // Sign In Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF43B888),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordResetSuccessScreen()));},
                        child: Text('Reset Password',style: TextStyle(color: Colors.white),),
                      ),
                    ),

                    // Create Account

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
}
