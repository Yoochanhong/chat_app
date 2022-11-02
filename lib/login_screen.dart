import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSignupScreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              padding: EdgeInsets.only(
                top: 90,
                left: 42,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Welcome',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: ' to Chanting app!',
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Sign up continue',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 180,
            child: Container(
              padding: EdgeInsets.all(20.0),
              height: 280,
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,
                    ),
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: !isSignupScreen
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                            if (!isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'SIGNUP',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color:
                                    isSignupScreen ? Colors.black : Colors.grey,
                              ),
                            ),
                            if (isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Colors.grey[300],
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    35.0,
                                  ),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    35.0,
                                  ),
                                ),
                              ),
                              hintText: '이름',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Colors.grey[300],
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    35.0,
                                  ),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    35.0,
                                  ),
                                ),
                              ),
                              hintText: '이름',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Colors.grey[300],
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    35.0,
                                  ),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    35.0,
                                  ),
                                ),
                              ),
                              hintText: '이름',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 430,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                padding: EdgeInsets.all(15.0),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        //그랴데이션
                        colors: [
                          Colors.orange,
                          Colors.red,
                        ],
                        begin: Alignment.topLeft, //그라데이션 방향
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
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
