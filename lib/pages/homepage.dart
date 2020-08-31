import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    var timeNow = int.parse(DateFormat('kk').format(now));

    var message;
    if (timeNow < 12) {
      message = 'Morning!';
    } else if (timeNow >= 12 && timeNow < 16) {
      message = 'Afternoon!';
    } else if (timeNow >= 16 && timeNow < 80) {
      message = 'Evening!';
    } else {
      message = 'Night!';
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF757575)),
        backgroundColor: Colors.white,
        leading: Container(
          child: Image.asset("images/dots.png"),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Icon(Icons.shopping_cart),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: new BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: Colors.white,
                        )),
                    constraints: BoxConstraints(
                      minHeight: 12,
                      minWidth: 12,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "             CHORES",
              style: GoogleFonts.poppins(
                color: Color(0xFF757575),
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Stack(
              children: [
                Icon(Icons.album),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: new BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.white)),
                    constraints: BoxConstraints(
                      minHeight: 12,
                      minWidth: 12,
                    ),
                  ),
                ),
              ],
            ),
            Icon(Icons.account_circle),
          ],
        ),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: GoogleFonts.poppins(
                  color: Colors.black87,
                  fontSize: 22.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today",
                    style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tomorrow",
                    style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming",
                      style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                    Icon(Icons.add, color: Colors.blue)
                  ]),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Someday",
                    style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
