import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:muj_kart/pages/datalist.dart';
import 'package:muj_kart/pages/detail.dart';
//UI Files

import 'package:muj_kart/comp/horizontal_listview.dart';
import 'package:muj_kart/comp/products.dart';
import 'package:muj_kart/pages/about.dart';


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
          AssetImage('images/p1.jpg'),
          AssetImage('images/p2.jpg'),
          AssetImage('images/p3.jpg'),
          AssetImage('images/p4.jpg'),
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
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){showSearch(context: context, delegate: DataSearch(listWords));}),
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
           Container(
             color: Colors.indigoAccent,
             height: 35.0,
             alignment: Alignment.center,
             child: Text(
              'Welcome user!',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 15.0,
               ),
             ),
           ),
           image_scroll,
           Padding(padding: const EdgeInsets.all(15.0),
            child: Text(
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

          new Padding(padding: const EdgeInsets.only(top: 30.0, left: 15.0),
            child: new Text(
              'Recent Browses',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          new Padding(padding: const EdgeInsets.only(top: 10.0),

            child: Container(
             height: 500.0,
             child: Products(),
          )
          ),
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {

  final List<ListWords> listWords;

  DataSearch(this.listWords);

  @override
  List<Widget> buildActions(BuildContext context) {
    //Actions for app bar
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {
      query = '';
    })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //leading icon on the left of the app bar
    return IconButton(
        icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some result based on the selection
    final suggestionList = listWords;

    return ListView.builder(itemBuilder: (context, index) => ListTile(

      title: Text(listWords[index].titlelist),
      subtitle: Text(listWords[index].definitionlist),
    ),
      itemCount: suggestionList.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something

    final suggestionList = query.isEmpty
        ? listWords
        : listWords.where((p) => p.titlelist.contains(RegExp(query, caseSensitive: false))).toList();


    return ListView.builder(itemBuilder: (context, index) => ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detail(listWordsDetail: suggestionList[index]),
          ),
        );
      },
      trailing: Icon(Icons.remove_red_eye),
      title: RichText(
        text: TextSpan(
            text: suggestionList[index].titlelist.substring(0, query.length),
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                  text: suggestionList[index].titlelist.substring(query.length),
                  style: TextStyle(color: Colors.grey)),
            ]),
      ),
    ),
      itemCount: suggestionList.length,
    );
  }
}





