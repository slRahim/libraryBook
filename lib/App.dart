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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child :Text(
                        "Top Newest Books",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black
                        ),
                      )
                  ),
                  FlatButton(
                    color: Colors.blue[50],
                    textColor: Colors.blue,
                    onPressed: () {
                      // Respond to button press
                    },
                    child:Text(
                      "View All" ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ListView(

              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child :Text(
                        "Collections",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black
                        ),
                      )
                  ),
                  FlatButton(
                    color: Colors.blue[50],
                    textColor: Colors.blue,
                    onPressed: () {
                      // Respond to button press
                    },
                    child:Text(
                      "View All" ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ListView(

              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child :Text(
                        "Recommended Books",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black
                        ),
                      )
                  ),
                  FlatButton(
                    color: Colors.blue[50],
                    textColor: Colors.blue,
                    onPressed: () {
                      // Respond to button press
                    },
                    child:Text(
                      "View All" ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ListView(

              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child :Text(
                        "Popular Books",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black
                        ),
                      )
                  ),
                  FlatButton(
                    color: Colors.blue[50],
                    textColor: Colors.blue,
                    onPressed: () {
                      // Respond to button press
                    },
                    child:Text(
                      "View All" ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ListView(

              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child :Text(
                        "Top Selling Books",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black
                        ),
                      )
                  ),
                  FlatButton(
                    color: Colors.blue[50],
                    textColor: Colors.blue,
                    onPressed: () {
                      // Respond to button press
                    },
                    child:Text(
                      "View All" ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: ListView(

              ),
            )

          ],

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
                margin: EdgeInsets.only(top: 12),
                padding: EdgeInsets.all(12),
                child:Icon(Icons.home , color: Colors.white,),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
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

    );
  }


}
