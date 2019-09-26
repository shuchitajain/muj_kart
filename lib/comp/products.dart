import 'package:flutter/material.dart';
import 'package:finalize/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "BOOK",
      "picture": "images1/tag.png",
      "price": 500,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
                  builder: (context) => new ProductDetails())),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_pic,
                    fit: BoxFit.cover,
                  )),
            ), //----------------------------------
          ),
      ),
    );
  }
}
