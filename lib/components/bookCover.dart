import 'package:flutter/material.dart';
import 'package:flutter_library_book/models/Book.dart';

class BookCover extends StatelessWidget {

  final Book book ;

  BookCover(this.book);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Image.network(
            "https://i.pinimg.com/originals/b9/57/3e/b9573e65e8a6fdb09d3e06432480abbd.jpg",
          ),
        ),
        ListTile(
          title: Text(
            book.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            book.author,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        )

      ],
    );
  }
}
