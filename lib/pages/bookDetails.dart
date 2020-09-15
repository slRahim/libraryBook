import 'package:flutter/material.dart';
import 'package:flutter_library_book/models/Book.dart';

class BookDetails extends StatefulWidget {

  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {

  @override
  Widget build(BuildContext context) {

    final Book book = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        title: Text(
          'Book Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //
            },
            icon :Icon(Icons.shopping_cart,color: Colors.black,),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "from the book details ${book.name}"
        ),
      ),
    );
  }
}
