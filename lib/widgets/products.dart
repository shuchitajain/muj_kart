import 'package:flutter/material.dart';
import 'package:muj_kart/screens/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<Map<String, dynamic>> productList = [
    {
      "name": "Bs Grewal",
      "picture": "images1/book_icon.png",
      "price": 500,
    },
    {
      "name": "Drafter",
      "picture": "images1/drafter.png",
      "price": 250,
    },
    {
      "name": "Lab coat",
      "picture": "images1/labcoat.png",
      "price": 250,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: productList.length,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return Single(
          prodName: productList[index]['name'],
          prodPic: productList[index]['picture'],
          prodPrice: productList[index]['price'],
        );
      },
    );
  }
}

class Single extends StatelessWidget {
  final prodName;
  final prodPic;
  final prodPrice;

  Single({
    this.prodName,
    this.prodPic,
    this.prodPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prodName,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetails(productName: prodName, productLoc: prodPic,))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  prodPic,
                  height: 50,
                  fit: BoxFit.scaleDown,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                ),
                Text(
                  prodName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "\u20B9$prodPrice",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
