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
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images-na.ssl-images-amazon.com/images/I/814FfszRNCL.jpg'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 3,), // changes position of shadow
                ),
              ],
            ),
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
