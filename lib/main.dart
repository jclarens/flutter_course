import 'package:flutter/material.dart';

// main() {
//   runApp(MyApp());
// }
//utk 1 baris yg di eksekusi bisa pake cara ini
void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Apps'),
        ),
        body: Card(child: Column(children: <Widget>[
          Image.asset('assets/a.jpg'),
          Text('Jeearens')
        ],),),
      ),
    );
  }
}
