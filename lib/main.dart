import 'package:flutter/material.dart';
import 'package:flutter_library_book/pages/bookDetails.dart';
import 'package:flutter_library_book/pages/home.dart';
import 'App.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library Book',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyAppPage(),
      routes: {
        "/bookDetails" : (context)=> BookDetails(),
      },
    );
  }
}