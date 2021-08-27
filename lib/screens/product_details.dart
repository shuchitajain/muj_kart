import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String productName;
  final String productLoc;
  const ProductDetails({Key key, this.productName, this.productLoc}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
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
      body: Container(
        child: Center(
          child: Hero(
            tag: widget.productName,
            child: Image.asset(
              widget.productLoc,
            ),
          ),
        ),
      ),
    );
  }
}
