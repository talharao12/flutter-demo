import 'package:flutter/material.dart';

import 'forgot_password_screen.dart';

class LoginScreen extends StatelessWidget {
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
                  'Sign in',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                // SizedBox(height: 8),
                Row(
                  children: [
                    Text('New User?',style: TextStyle(
                    fontSize:14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                      wordSpacing: 0,

                    ),),
                    TextButton(
                      onPressed: () {},
                      child: Text('Create an account',style: TextStyle(
                        fontSize:14,
                        fontWeight: FontWeight.bold,
                        height: 0.1,
                        wordSpacing: 0,
                        color:Color(0xFF43B888),
                      ),),
                    ),
                  ],
                ),

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

                    TextField(
                     decoration: InputDecoration(
                       filled: true,
                       fillColor: Color(0xFFF6F6F7),
                       hintText: 'Password',
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8),
                         borderSide: BorderSide.none,
                       ),
                       suffixIcon: Icon(Icons.visibility,color: Color(0xff6E6D79),),
                     ),
                   // Password TextField
                    ),
                   SizedBox(height: 8),
                   // Forgot Password
                   Align(
                     alignment: Alignment.centerRight,
                     child: TextButton(
                       onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));},
                       child: Text(
                         'Forgot Password?',
                         style: TextStyle(color: Color(0xFF43B888)),
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
                       onPressed: () {},
                       child: Text('Sign in',style: TextStyle(color: Colors.white),),
                     ),
                   ),
                   
                 ],
                ),
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.only(bottom: 20),
        child: Text(
          'Pricing - Blog - About',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
