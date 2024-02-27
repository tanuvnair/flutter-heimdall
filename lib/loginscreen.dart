import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    Image logo = Image.asset('assets/logos/heimdall-1000x1000-transparent.png', width: 250);
    Color ?primary = Colors.purple[900];
    Color ?secondary = Colors.black;

    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: secondary,
          ),
          child: Column(
                children: [
          Container(
            height: screenHeight / 2.5,
            width: screenWidth,
            decoration: BoxDecoration(
              color: primary,
            ),
            child: Center(
              child: logo
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: screenWidth / 8,
              bottom: screenWidth / 32,
            ),
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: screenWidth / 12,
                fontFamily: "Oswald",
                color: Colors.white,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(
              horizontal: screenWidth / 12,
              vertical: screenHeight / 32,
            ),
            child: Column(
              children: [
                Container(
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.only(right: 25),
                        width: screenWidth / 15,
                        child: const Icon(Icons.person),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: screenHeight / 46,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(
              horizontal: screenWidth / 12,
              vertical: screenHeight / 128,
            ),
            child: Column(
              children: [
                Container(
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.only(right: 25),
                        width: screenWidth / 15,
                        child: const Icon(Icons.password),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: screenHeight / 46,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
                ],
              ),
        ));
  }
}
