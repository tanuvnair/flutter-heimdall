import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the sign-in page
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ),
                  // );
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.white), // Set the outline color
                  backgroundColor: Colors.transparent, // Set the background color to transparent
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
