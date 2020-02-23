import 'package:flutter/material.dart';
import 'package:muj_kart/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Bs grewal",
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
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Single(
            prod_name: product_list[index]['name'],
            prod_pic: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single extends StatelessWidget {
  final prod_name;
  final prod_pic;
  final prod_price;

  Single({
    this.prod_name,
    this.prod_pic,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap:()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails()
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          prod_pic,
                          height: 50,
                          fit: BoxFit.scaleDown,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                        ),
                        Text(
                            prod_name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                          ),
                        Text(
                          "\u20B9$prod_price",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    ),
                  ),
            ),
          );
  }
}
