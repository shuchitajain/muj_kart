import 'package:flutter/material.dart';

class About extends StatefulWidget {
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/lay.jpg'),
            ),
            Text(
              'Lay Patel',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Senior Developer',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                letterSpacing: 2.5,
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,
              ),
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/shuchita.jpg'),
            ),
            Text(
              'Shuchita Jain',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Senior Developer',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                letterSpacing: 2.5,
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



