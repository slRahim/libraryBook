import 'package:flutter/material.dart';
import 'package:flutter_library_book/components/bookCover.dart';
import 'package:flutter_library_book/models/Book.dart';

class BooksListingPage extends StatelessWidget {

  List<Book> _books = <Book> [
    new Book("Breakin Bad", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Abderahim"),
    new Book("Peaky Blinders", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Mouad"),
    new Book("Breakin Bad", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Abderahim"),
    new Book("Peaky Blinders", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Mouad"),
    new Book("Breakin Bad", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Abderahim"),
    new Book("Peaky Blinders", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Mouad"),
  ];

  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context).settings.arguments ;
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.black,),
          ),
          title: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Text(
                "${_books.length} Books",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15
                ),
              ),
            ],
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
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: MediaQuery.of(context).size.width / MediaQuery.of(context).size.height,
        ),
        itemCount: _books.length,
        itemBuilder: (_, i) =>Container(
            child: BookCover(_books.elementAt(i))

        ),

      )
    );
  }
}
