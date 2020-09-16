import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/account.dart';
import 'pages/advancedSearch.dart';
import 'pages/favorite.dart';
import 'pages/library.dart';

class MyAppPage extends StatefulWidget {


  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {

  int _viewIndex = 2 ;

  List<Widget> _views = <Widget>[
    AdvancedSearch(),LibraryPage(),HomePage(),FavoritePage(),AccountPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _viewIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.local_library , color: Colors.red,size: 40,),
            Text(
              'Maktaba',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
              ),
            ),
          ],
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

      body: _views.elementAt(_viewIndex),

      bottomNavigationBar:Container(
        padding: EdgeInsets.all(10),
        child:BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[700],
          selectedFontSize: 12,
          unselectedFontSize: 12,
          currentIndex: _viewIndex,
          onTap: _onItemTapped ,
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
