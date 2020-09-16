import 'package:flutter/material.dart';
import 'package:flutter_library_book/components/bookCard.dart';
import 'package:flutter_library_book/models/Book.dart';

class BookDetails extends StatefulWidget {

  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {

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

    final Book book = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //
            },
            icon :Icon(Icons.share,color: Colors.black),
          ),
          IconButton(
            onPressed: (){
              //
            },
            icon :Icon(Icons.turned_in_not,color: Colors.black),
          ),
          IconButton(
            onPressed: (){
              //
            },
            icon :Icon(Icons.shopping_cart,color: Colors.black),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: 600,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 3,), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10 , bottom: 10),
                  color: Colors.red,
                  height: 300,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10 , bottom: 10),
                  alignment: Alignment.center,
                  child: Text(
                    book.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10 , bottom: 10),
                  alignment: Alignment.center,
                  child: Text(
                    book.author,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.red,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10 , bottom: 10),
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                    width: 150,
                    height: 30,
                    child: Row(
                      children: [

                      ],
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 30 , bottom: 10),
                    child: Text(
                      book.details,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: FlatButton(
                    onPressed: (){
                      //
                    },

                    child: Text(
                      'Read More',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ) ,
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(12),
            height: 770,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 3,), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                     Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset: Offset(0, 3,), // changes position of shadow
                              ),
                            ],
                          ),
                          child: FlatButton(
                            onPressed: (){
                              //
                            },
                            child: Text(
                              'Download Sample',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                            color: Colors.white,
                          )
                        )
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red[400],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 3,), // changes position of shadow
                            ),
                          ],
                        ),
                        child:FlatButton(
                          onPressed: (){
                            //
                          },
                          child: Text(
                            'Read Book',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),
                          ),
                          color: Colors.red[400],
                        )
                      ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child:Text(
                        'Top Reviews',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
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
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 200,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (_,i)=>Container(
                        height: 70,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(1, 2,), // changes position of shadow
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 30,
                            child: Text(
                              "ZF",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          title: Text("item ${i}"),
                        ),
                      )
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child:Text(
                        'Author',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.only(top: 10,bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(1, 2,), // changes position of shadow
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child:Text(
                        'More Books by This Author',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10 , bottom: 10),
                  height: 230,
                  child: ListView.builder(
                      itemCount: _books.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_,i) => Container(
                          margin: EdgeInsets.only(right: 10),
                          child:InkWell(
                            onTap: (){
                              Navigator.pushNamed(context,'/bookDetails',arguments: _books.elementAt(i));
                            },
                            child: BookCard(_books.elementAt(i)),
                          )
                      )
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
