import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:woofer/pages/homepage.dart';

// import 'package:woofer/pages/homepage.dart';
// import 'package:woofer/pages/signup.dart';

final FirebaseAuth mAuth = FirebaseAuth.instance;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        title: Text(
          "Welcome back!",
          style: GoogleFonts.raleway(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        elevation: 0.5,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Log in to Woofer",
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                color: Colors.black87,
                fontSize: 20,
                letterSpacing: 1.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.blue[500].withOpacity(.0),
                    ),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: Colors.white.withOpacity(.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      controller: emailController,
                      style: GoogleFonts.poppins(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: const InputDecoration(
                        labelText: 'Email address',
                        // hintStyle: Color(),
                      ),
                      // ignore: missing_return
                      validator: (emailController) {
                        if (emailController.trim().isEmpty) {
                          return 'Email address is required';
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.blue[500].withOpacity(.0),
                    ),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: Colors.white.withOpacity(.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      style: GoogleFonts.poppins(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        // hintStyle: Color(),
                      ),
                      // ignore: missing_return
                      validator: (passwordController) {
                        if (passwordController.trim().isEmpty) {
                          return 'Password is required';
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            InkWell(
              splashColor: Colors.grey[350],
              onTap: () {},
              child: Text(
                "Forgotten your password?",
                textAlign: TextAlign.center,
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0,
                  color: Colors.blueGrey[500],
                ),
              ),
            ),
            SizedBox(height: 65.0),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              height: 45.0,
              child: Material(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.teal,
                elevation: 1.0,
                child: InkWell(
                  borderRadius: BorderRadius.circular(5.0),
                  splashColor: Colors.teal[900],
                  onTap: () {
                    signUpWithEmailPassword();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomePage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Log In",
                          textAlign: TextAlign.center,
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
          ],
        ),
      ),
    );
  }

  void signUpWithEmailPassword() async {
    FirebaseUser user;
    try {
      user = await mAuth.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } catch (e) {
      print(e.toString());
    }
  }
}
