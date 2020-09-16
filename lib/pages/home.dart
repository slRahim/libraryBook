import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_library_book/components/bookCard.dart';
import 'package:flutter_library_book/components/bookCover.dart';
import 'package:flutter_library_book/models/Book.dart';


class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  List<Book> books = <Book> [
    new Book("Breakin Bad", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Abderahim"),
    new Book("Peaky Blinders", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Mouad"),
    new Book("Breakin Bad", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Abderahim"),
    new Book("Peaky Blinders", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Mouad"),
    new Book("Breakin Bad", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Abderahim"),
    new Book("Peaky Blinders", "ghngq grgjk gbg gzgbjziqg nnr gnjigs fifzeq biieqfi", "Mouad"),
  ];

  final List _covers = [
    "https://images.wallpaperscraft.com/image/books_vintage_paper_cards_notebook_retro_74362_1920x1080.jpg",
    "https://image.winudf.com/v2/image1/Y29tLnNvbWV3YWxsaWVzLnNvbWV3YWxscGFwZXJzX3NvbWV3YWxzMS5saWJyYXJ5X3NjcmVlbl8yXzE1NDcyNjUyOTRfMDEx/screen-2.jpg?fakeurl=1&type=.jpg",
    "https://wi.wallpapertip.com/wsimgs/248-2485009_library-desktop-wallpaper.jpg"
  ];
  
  Color generateRandomColor() {
    // Define all colors you want here
    const predefinedColors = [Colors.pink ,Colors.red , Colors.orange , Colors.yellow];
    Random random = Random();
    return predefinedColors[random.nextInt(predefinedColors.length)];
  }

  @override
  Widget build(BuildContext context) {

    return ListView(
      padding: EdgeInsets.all(12),
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10 , bottom: 10),
          height: 280,
          child: ListView.builder(
              itemCount:_covers.length ,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,i) => Container(
                width: 300,
                margin: EdgeInsets.only(right: 10 , bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(_covers.elementAt(i)),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3,), // changes position of shadow
                    ),
                  ],
                ),
              )
          ),
        ),

        Row(
          children: <Widget>[
            Expanded(
              child:Text(
                'Top Newest Books',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            FlatButton(
              onPressed: (){
                //
              },
              child: Text(
                'View All',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              ),
              color: Colors.blue[50],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10 , bottom: 10),
          height: 250,
          child: ListView.builder(
              itemCount: books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,i) => Container(
                width: 130,
                margin: EdgeInsets.only(right: 8),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context,'/bookDetails',arguments: books.elementAt(i));
                  },
                  child: Expanded(
                    child: BookCover(books.elementAt(i)),
                  )
                )
              )
          ),
        ),

        Row(
          children: <Widget>[
            Expanded(
              child:Text(
                'Collections',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            FlatButton(
              onPressed: (){
                //
              },
              child: Text(
                'View All',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              ),
              color: Colors.blue[50],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10 , bottom: 10),
          height: 80,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,i) => Container(
                width: 140,
                margin: EdgeInsets.only(right: 10),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [generateRandomColor() , generateRandomColor() , generateRandomColor()],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.2,0.7,1]
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Text(
                    "item ${i}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white
                    ),
                  ),
                ),
              )
          ),
        ),


        Row(
          children: <Widget>[
            Expanded(
              child:Text(
                'Recommended Books',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            FlatButton(
              onPressed: (){
                //
              },
              child: Text(
                'View All',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              ),
              color: Colors.blue[50],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10 , bottom: 10),
          height: 250,
          child: ListView.builder(
              itemCount: books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,i) => Container(
                  width: 130,
                  margin: EdgeInsets.only(right: 8),
                  child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context,'/bookDetails',arguments: books.elementAt(i));
                      },
                      child: Expanded(
                        child: BookCover(books.elementAt(i)),
                      )
                  )
              )
          ),
        ),


        Row(
          children: <Widget>[
            Expanded(
              child:Text(
                'Popular Books',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            FlatButton(
              onPressed: (){
                //
              },
              child: Text(
                'View All',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              ),
              color: Colors.blue[50],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10 , bottom: 10),
          height: 230,
          child: ListView.builder(
              itemCount: books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,i) => Container(
                margin: EdgeInsets.only(right: 10),
                child:InkWell(
                    onTap: (){
                      Navigator.pushNamed(context,'/bookDetails',arguments: books.elementAt(i));
                    },
                    child: BookCard(books.elementAt(i)),
                )
              )
          ),
        ),


        Row(
          children: <Widget>[
            Expanded(
              child:Text(
                'Top Selling Books',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            FlatButton(
              onPressed: (){
                //
              },
              child: Text(
                'View All',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              ),
              color: Colors.blue[50],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10 , bottom: 10),
          height: 250,
          child: ListView.builder(
              itemCount: books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,i) => Container(
                  width: 130,
                  margin: EdgeInsets.only(right: 8),
                  child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context,'/bookDetails',arguments: books.elementAt(i));
                      },
                      child: Expanded(
                        child: BookCover(books.elementAt(i)),
                      )
                  )
              )
          ),
        ),


        Row(
          children: <Widget>[
            Expanded(
              child:Text(
                'Best Authors',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            FlatButton(
              onPressed: (){
                //
              },
              child: Text(
                'View All',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),
              ),
              color: Colors.blue[50],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10 , bottom:10),
          height: 150,
          child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,i) => Container(
                width: 120,
                margin: EdgeInsets.only(right: 2),
                child: Column(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        backgroundColor: generateRandomColor(),
                        radius: 40,
                        child: Text(
                            "AH",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Abderrahim Slimani",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
          ),
        ),

      ],

    );
  }
}
