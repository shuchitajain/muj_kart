import 'package:flutter/material.dart';

class HorizontalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location:'images1/writing.png' ,
            image_caption: 'Notes',
          ),

          Category(
            image_location:'images1/open-book.png' ,
            image_caption: 'Books',
          ),

          Category(
            image_location:'images1/checkbox-pen-outline.png' ,
            image_caption: 'Lab Material',
          ),

          Category(
            image_location:'images1/computer-tablet.png' ,
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
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 50.0,
            ),
            subtitle: Container(
              height: 200.0,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 5.0),
              child: Text(image_caption,style: new TextStyle(fontSize: 10.0,color: Colors.red),),
            ),
          ),
        ),
      ),
    );
  }
}
