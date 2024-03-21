import 'package:flutter/material.dart';
import 'sign_in_page.dart'; // Import the sign-in page

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Circle1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logos/heimdall-1000x1000-transparent.png',
                width: 291,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the sign-in page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.white), // Set the outline color
                  backgroundColor: Colors.transparent, // Set the background color to transparent
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32), // Adjust padding to make the button bigger
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.person, color: Colors.white), // User icon
                    SizedBox(width: 8), // Add spacing between icon and text
                    Text(
                      'SIGN IN',
                      style: TextStyle(color: Colors.white), // Set text color to white
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
