import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//UI Files

import 'package:finalize/comp/horizontal_listview.dart';
import 'package:finalize/comp/products.dart';
import 'package:finalize/pages/about.dart';


void main(){
  runApp(
      new MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainPage()
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
      height: 400.0,

      child: new Carousel(
        boxFit: BoxFit.cover,

        images: [
          AssetImage('images/photo_2019-11-13_01-30-27.jpg'),
          AssetImage('images/photo_2019-11-13_01-30-38.jpg'),
          AssetImage('images/photo_2019-11-13_01-30-33.jpg'),
        ],
        autoplay: true,
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
        backgroundColor: Colors.indigo,
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
              new UserAccountsDrawerHeader(accountName: Text('Admin'), accountEmail: Text('admin@gmail.com'),currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: AssetImage('images/shuchita.jpg'),
                ),
              ),
                decoration: new BoxDecoration(
                    color: Colors.indigo
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
                    leading: Icon(Icons.help_outline,color: Colors.blue,)
                ),
              ),
            ],
          )
      ),

      body: new ListView(
        children: <Widget>[
          image_scroll,
          new Padding(padding: const EdgeInsets.all(15.0),
            child: new Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          //Categories started here
          HorizontalView(),

          new Padding(padding: const EdgeInsets.all(30.0),
            child: new Text(
              'Recent Browses',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          //RECENTS

          Container(
            height: 300.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

