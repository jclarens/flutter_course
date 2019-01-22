import 'package:flutter/material.dart';

// main() {
//   runApp(MyApp());
// }
//utk 1 baris yg di eksekusi bisa pake cara ini
void main() => runApp(MyApp());

// StatelessWidget it's able to accept extra data and had a build method that build some widget tree,
// it can't work with internal data, it can't change such internal data therefore and it will not recall build if some data changed,
// because it doesn't work with internal data
// it will only call build if it is created for the first time or if some data widget receives changes  
class MyApp extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState

      // dan sekarang widget statefull membuat state objek yg baru based on class yg kita buat yg mana mengextend state
      // dan mempunyai build method
      return _MyAppState();
    }
}

// menggunakan underscore sebagai penanda bahwa class ini tidak digunakan oleh bagian yg lain ata file yg lain
// tetapi hanya pada file iini saja.
// State<Myapp> dibuat itu karena kita harus bilang ke flutter bahwa class _MyAppState belongs to Widget MyApp
// sehingga return dari class MyApp adalah class _MyAppState();
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Apps'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Add Product'),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text('NOMNOM')
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
