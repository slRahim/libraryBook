import 'package:flutter/material.dart';
import 'package:flutter_library_book/components/bookCover.dart';
import 'package:flutter_library_book/models/Book.dart';


class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  List<Book> books = <Book> [
    new Book("Breakin Bad", null, "Abderahim"),
    new Book("Peaky Blinders", null, "Mouad"),
    new Book("Breakin Bad", null, "Abderahim"),
    new Book("Peaky Blinders", null, "Mouad"),
    new Book("Breakin Bad", null, "Abderahim"),
    new Book("Peaky Blinders", null, "Mouad"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(12),
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10 , bottom: 10),
          height: 280,
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,i) => Container(
                width: 300,
                margin: EdgeInsets.all(10),
                child: Container(
                  alignment: Alignment.center,
                  child: Text("item ${i}"),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 10,
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
          height: 200,
          child: ListView.builder(
              itemCount: books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,i) => Container(
                width: 130,
                margin: EdgeInsets.only(right: 1),
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
          height: 100,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,i) => Container(
                color: Colors.blue[50],
                width: 120,
                margin: EdgeInsets.only(right: 5),
                child: Container(
                  alignment: Alignment.center,
                  child: Text("item ${i}"),
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
          height: 200,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,i) => Container(
                color: Colors.blue[50],
                width: 120,
                margin: EdgeInsets.only(right: 5),
                child: Container(
                  alignment: Alignment.center,
                  child: Text("item ${i}"),
                ),
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
          height: 200,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,i) => Container(
                color: Colors.blue[50],
                width: 120,
                margin: EdgeInsets.only(right: 5),
                child: Container(
                  alignment: Alignment.center,
                  child: Text("item ${i}"),
                ),
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
          height: 200,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,i) => Container(
                color: Colors.blue[50],
                width: 120,
                margin: EdgeInsets.only(right: 5),
                child: Container(
                  alignment: Alignment.center,
                  child: Text("item ${i}"),
                ),
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
          margin: EdgeInsets.only(top: 10 , bottom: 10),
          height: 150,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,i) => Container(
                color: Colors.blue[50],
                width: 120,
                margin: EdgeInsets.only(right: 5),
                child: Container(
                  alignment: Alignment.center,
                  child: Text("item ${i}"),
                ),
              )
          ),
        ),

      ],

    );
  }
}
