import 'package:flutter/material.dart';

class HorizontalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation:'images1/icons8-open-book-64.png' ,
            imageCaption: 'Notes',
          ),

          Category(
            imageLocation:'images1/icons8-tasks-64.png' ,
            imageCaption: 'Books',
          ),

          Category(
            imageLocation:'images1/icons8-note-64.png' ,
            imageCaption: 'Lab',
          ),

          Category(
            imageLocation:'images1/icons8-multiple-devices-64.png' ,
            imageCaption: 'Electronics',
          ),

          Category(
            imageLocation:'images1/icons8-open-book-64.png' ,
            imageCaption: 'Miscellaneous',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({
    this.imageLocation,
    this.imageCaption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 100.0,
              height: 60.0,
            ),
            subtitle: Container(
              height: 400.0,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 2.0),
              child: Text(imageCaption,style: new TextStyle(fontSize: 15.0,color: Colors.black54),),
            ),
          ),
        ),
      ),
    );
  }
}
