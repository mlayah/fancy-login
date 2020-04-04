import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var mainColor = Color(0XFF0088FF);

  @override
  Widget build(BuildContext context) {
    var halfSide = MediaQuery.of(context).size.width / 2;
    var side = halfSide * sqrt(2);

    var _borders = OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(32));

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              color: Colors.grey[200],
            ),
          ),
          Image.asset(
            'assets/bg.png',
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitHeight,
          ),
          Align(
            alignment: Alignment(0, 0.25),
            child: Transform.rotate(
              angle: pi / 4,
              child: Material(
                elevation: 5,
                shadowColor: Colors.black,
                color: mainColor,
                borderRadius: BorderRadius.circular(32),
                child: Container(
                  height: side,
                  width: side,
                  child: Transform.rotate(
                    angle: -pi / 4,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                filled: false,
                                contentPadding: EdgeInsets.all(10),
                                enabledBorder: _borders,
                                focusedBorder: _borders,
                                hintText: 'Your Email',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: TextField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                filled: false,
                                contentPadding: EdgeInsets.all(10),
                                enabledBorder: _borders,
                                focusedBorder: _borders,
                                hintText: 'Your Password',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: mainColor,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Text(
                'Go To Sign Up',
                style: TextStyle(
                  color: mainColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.7),
            child: Icon(
              Icons.airplanemode_active,
              color: Colors.white,
              size: 90,
            ),
          )
        ],
      ),
    );
  }
}
