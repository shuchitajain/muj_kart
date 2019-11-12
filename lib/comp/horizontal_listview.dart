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
            image_location:'images1/icons8-open-book-64.png' ,
            image_caption: 'Notes',
          ),

          Category(
            image_location:'images1/icons8-tasks-64.png' ,
            image_caption: 'Books',
          ),

          Category(
            image_location:'images1/icons8-note-64.png' ,
            image_caption: 'Lab',
          ),

          Category(
            image_location:'images1/icons8-multiple-devices-64.png' ,
            image_caption: 'Electronics',
          ),

          Category(
            image_location:'images1/tag.png' ,
            image_caption: 'Miscellaneous',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
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
              image_location,
              width: 100.0,
              height: 60.0,
            ),
            subtitle: Container(
              height: 400.0,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 2.0),
              child: Text(image_caption,style: new TextStyle(fontSize: 15.0,color: Colors.black54),),
            ),
          ),
        ),
      ),
    );
  }
}
