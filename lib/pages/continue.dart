import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:woofer/pages/signup.dart';

class ContinuePage extends StatefulWidget {
  @override
  _ContinuePageState createState() => _ContinuePageState();
}

class _ContinuePageState extends State<ContinuePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15.0, 75.0, 15.0, 0.0),
                    child: Image.asset(
                      'images/first_.png',
                      height: 280,
                      width: 280,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10.0, 375.0, 10.0, 0.0),
                    child: Text(
                      "Scheduling made simpler.\nFree on Woofer.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                          color: Colors.black87),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0.0, 440.0, 0.0, 0.0),
                    child: Text(
                      "Stay organized and get more done.\nWoofer helps you to focus, prioritize and get\nthings done shortly..",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 82.0),
          Container(
            padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
            height: 45.0,
            child: Material(
              borderRadius: BorderRadius.circular(5.0),
              color: Color.fromRGBO(65, 132, 243, 1.0),
              elevation: 1.0,
              child: InkWell(
                borderRadius: BorderRadius.circular(5.0),
                splashColor: Colors.blue[700],
                onTap: () {},
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 20.0),
                      Center(
                        child: Image.asset(
                          "images/google1.png",
                          width: 16.0,
                          height: 20.0,
                        ),
                      ),
                      SizedBox(width: 70.0),
                      Center(
                        child: Text(
                          "Continue with Google",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
            height: 45.0,
            child: Material(
              borderRadius: BorderRadius.circular(5.0),
              color: Color.fromRGBO(66, 103, 177, 1.0),
              elevation: 1.0,
              child: InkWell(
                borderRadius: BorderRadius.circular(5.0),
                splashColor: Colors.blue[900],
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 20.0),
                    Center(
                      child: Image.asset(
                        "images/facebook1.png",
                        width: 16.0,
                        height: 20.0,
                      ),
                    ),
                    SizedBox(width: 65.0),
                    Center(
                      child: Text(
                        "Continue with Facebook",
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
            height: 45.0,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black26,
                  style: BorderStyle.solid,
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(5.0),
                splashColor: Colors.grey[350],
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => SignUpPage(),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 19.0),
                    Center(
                      child: Image.asset(
                        "images/email.png",
                        width: 18.0,
                        height: 20.0,
                      ),
                    ),
                    SizedBox(width: 75.0),
                    Center(
                      child: Text(
                        "Continue with Email",
                        style: GoogleFonts.raleway(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Text(
                  "Why do I need to create an account?",
                  style: GoogleFonts.raleway(
                    color: Colors.teal[600],
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "By using Woofer you accept our",
                style: GoogleFonts.raleway(
                  color: Colors.black38,
                  fontSize: 11.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 3.0),
              InkWell(
                  onTap: () {},
                  child: Text(
                    "Terms of Use",
                    style: GoogleFonts.raleway(
                      color: Colors.black54,
                      fontSize: 11.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(width: 3.0),
              Text(
                "and",
                style: GoogleFonts.raleway(
                  color: Colors.black38,
                  fontSize: 11.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 3.0),
              InkWell(
                  onTap: () {},
                  child: Text(
                    "Privacy Policy",
                    style: GoogleFonts.raleway(
                      color: Colors.black54,
                      fontSize: 11.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              Text(
                ".",
                style: GoogleFonts.raleway(
                  color: Colors.black38,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
