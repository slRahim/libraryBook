import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Maktaba',
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

      body: ListView(
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

      ),

      bottomNavigationBar:Container(
        padding: EdgeInsets.all(10),
        child:BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[700],
          selectedFontSize: 12,
          unselectedFontSize: 12,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem (
              title: Text('Search'),
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              title: Text('Library'),
              icon: Icon(Icons.local_library),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 7,
                      blurRadius: 10,
                      offset: Offset(0, 3,), // changes position of shadow
                    ),
                  ],

                ),
                child: Icon(Icons.home , color: Colors.white),
              )

            ),
            BottomNavigationBarItem(
              title: Text('Favorite'),
              icon: Icon(Icons.turned_in),
            ),
            BottomNavigationBarItem(
              title: Text('Account'),
              icon: Icon(Icons.account_circle),
            ),
          ],
        ),
      )


    );
  }


}
