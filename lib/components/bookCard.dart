import 'package:flutter/material.dart';
import 'package:flutter_library_book/models/Book.dart';

class BookCard extends StatelessWidget {

  final Book book ;

  BookCard(this.book);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 320,
          height: 180,
          margin: EdgeInsets.only(top: 20),
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 3,), // changes position of shadow
              ),
            ],
          ),
          child: Container(
            margin: EdgeInsets.only(right: 10,left: 10),
            width:170,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.name ,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                  ),
                ),
                Text(
                  book.author ,
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                      book.details,
                      style: TextStyle(
                        fontSize: 14
                      ),
                  ),
                ),

              ],

            )
          ),

        ),
        Container(
          width: 120,
          height: 180,
          margin: EdgeInsets.only(left: 8 , bottom: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://cbcacloud.blob.core.windows.net/media/Default/Book%20Covers/2019/2019%20Early%20Childhood/DressUpBox.jpg'),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 3,), // changes position of shadow
              ),
            ],
          ),

        )
      ],
    );
  }
}
