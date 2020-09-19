import 'package:flutter/material.dart';
import 'package:flutter_library_book/components/bookCover.dart';
import 'package:flutter_library_book/models/Book.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<Book> _books = <Book> [
    new Book("Breakin Bad", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Abderahim"),
    new Book("Peaky Blinders", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Mouad"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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

    );
  }
}
