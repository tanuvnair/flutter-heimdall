import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Set app bar background color to transparent
        iconTheme: IconThemeData(color: Colors.white), // Set the color of back icon
      ),
      extendBodyBehindAppBar: true, // Extend body behind app bar
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Circle1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Set text color to white
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Please enter your email address to reset your password.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Set text color to white
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white), // Set label text color to white
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(color: Colors.white), // Set text color to white
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add logic to send reset password email
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set button background color to white
                    onPrimary: Colors.black, // Set button text color to black
                  ),
                  child: Text(
                    'Reset Password',
                    style: TextStyle(color: Colors.black), // Set text color to black
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
