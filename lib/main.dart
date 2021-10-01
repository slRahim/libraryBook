import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_library_book/pages/bookDetails.dart';
import 'package:flutter_library_book/pages/booksListing.dart';
import 'package:flutter_library_book/pages/splash.dart';
import 'App.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Widget _currentScreen = Splash() ;

  @override
  void initState() {
    Timer(Duration(seconds: 10), (){
      setState(() {
        _currentScreen = MyAppPage();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library Book',
      debugShowCheckedModeBanner: false,
      home: _currentScreen ,
      routes: {
        "/bookDetails" : (context)=> BookDetails(),
        "/bookListing" : (context)=>BooksListingPage(),
      },
    );
  }
}
