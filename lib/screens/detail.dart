import 'package:flutter/material.dart';
import 'package:muj_kart/models/datalist.dart';

class Detail extends StatelessWidget {

  final ListWords listWordsDetail;

  Detail({Key key, @required this.listWordsDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          title: const Text('Detail', style: TextStyle(color: Colors.white)),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(listWordsDetail.titleList + ' (on detail page)'),
              Text(listWordsDetail.definitionList),
            ],
          ),
        )
    );
  }
}