import 'package:demo/screens/verification_screen.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
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
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                // SizedBox(height: 8),
                Text('Please enter your email or phone number to get reset password.',style: TextStyle(
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
                   TextField(
                     decoration: InputDecoration(
                       filled: true,
                       fillColor: Color(0xFFF6F6F7),
                       hintText: 'Email',
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8),
                         borderSide: BorderSide.none,
                       ),
                     ),
                   ),
                   SizedBox(height: 12),

                  
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
                       onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationScreen()));},
                       child: Text('Send Reset Link',style: TextStyle(color: Colors.white),),
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
