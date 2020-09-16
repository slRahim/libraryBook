import 'package:flutter/material.dart';

class BooksListingPage extends StatelessWidget {
  final String title ;

  BooksListingPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.black,),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
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
            "from book listing"
        ),
      ),
    );
  }
}
