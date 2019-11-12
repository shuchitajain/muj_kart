import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//UI Files

import 'package:finalize/comp/horizontal_listview.dart';
import 'package:finalize/comp/products.dart';


void main(){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    )//Material App
  );
}

class MainPage extends StatefulWidget{
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context){
    Widget image_scroll = new Container(
      height: 200.0,

      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/notes.jpeg'),
          AssetImage('images/eg.jpeg'),
          AssetImage('images/i1.jpeg'),
          AssetImage('images/images.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize:4.0,
        dotColor: Colors.grey,
        indicatorBgPadding: 2.0,
      ),
    );


    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepOrange,
        title: Text('MUJ-Kart'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: (){})
        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(accountName: Text('Test User'), accountEmail: Text('Test mail.com'),currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,color: Colors.white,),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.red
            ),
            ),
         //BODY
         InkWell(
           onTap: (){},
           child: ListTile(
             title: Text('Home Page'),
             leading: Icon(Icons.home),
           ),
         ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person,color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard,color: Colors.red,),
              ),
            ),

            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => About()),
                );
              },
              child: ListTile(
                title: Text('About App'),
                leading: Icon(Icons.help_outline,color: Colors.blue,),
              ),
            ),
          ],
        )
      ),

      body: new ListView(
        children: <Widget>[
          image_scroll,
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),),
      //Categories started here
          HorizontalView(),

          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Browses'),),

          //RECENTS

          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
    }
  }

