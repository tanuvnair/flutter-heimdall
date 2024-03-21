import 'package:flutter/material.dart';
import 'package:flutter_heimdall/dashboard_page.dart';
import 'package:flutter_heimdall/forgot_password_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Set to true to extend the body behind the app bar
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Set the app bar background color to transparent
        iconTheme: IconThemeData(color: Colors.white), // Set the color of back icon
        automaticallyImplyLeading: true, // Set to true to include the back button icon
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Circle1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32, // Increase the font size
                  fontWeight: FontWeight.bold, // Make the text bold
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20), // Add spacing between header and form fields
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    style: TextStyle(color: Colors.white), // Set the color of text field content
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white), // Set the color of label text
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    style: TextStyle(color: Colors.white), // Set the color of text field content
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white), // Set the color of label text
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16), // Add space between password field and "Forgot Password" text
                  GestureDetector(
                    onTap: () {
                      // Navigate to forgot password page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline, // Add underline to indicate it's clickable
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32), // Add more space between "Forgot Password" text and sign-in button
              ElevatedButton.icon(
                onPressed: () {
                  // Navigate to dashboard
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple, // Set button background color to deepPurple
                  onPrimary: Colors.white, // Set button text color to white
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Add rounded corners to button
                ),
                icon: Icon(Icons.login), // Add icon to button
                label: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white), // Set text color to white
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
