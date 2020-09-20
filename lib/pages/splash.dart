import 'package:flutter/material.dart';
import 'package:flutter_library_book/App.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loginPage.dart';

class Splash extends StatelessWidget {
  final dd= DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40),
        color: Colors.redAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/icon/library.png"),
                  ),
                  border: Border.all(color: Colors.white,width: 5.0),
                  shape: BoxShape.circle
              ),
            ),
            Container(
              child: Text(
                  "Book Library",
                  style: GoogleFonts.pacifico(color: Colors.white , fontSize: 40)
              ),
            ),
            Container(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            Container(
              child: Text(
                "© CopyRight ♥ created by Abderrahim ${dd.year}",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


