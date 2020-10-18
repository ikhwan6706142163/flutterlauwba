import 'package:flutter/material.dart';
import 'package:layouting/SplashScreen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: SplashScreen.id,
      // routes: {
      //   SplashScreen.id: (context) => HomePage(),
      // },
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _gantiText = "ikang tengiri enak bro";
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      child: Image.asset('assets/images/a.jpg'),
    );
    Widget titleSection = Container(
      padding: EdgeInsets.all(10),
      child: Text('Ikan Makarel',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          )),
    );
    Widget description = Center(
        // padding: EdgeInsets.all(10),
        child: Text('asdfasdfasidfh asdfjnasdlfknasoi afoasdfsd'));
    Widget ratting = Row(children: [
      Icon(Icons.star, color: Colors.yellow),
      Icon(Icons.star, color: Colors.yellow),
      Icon(Icons.star, color: Colors.yellow),
      Icon(Icons.star, color: Colors.yellow),
      Icon(Icons.star)
    ]);
    Widget risedButton = Align(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text(_gantiText),
          RaisedButton(
              child: Text("Klik"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                setState(() {
                  _gantiText = "Stok Tidak ada";
                });
              })
        ],
      ),
    );
    return Scaffold(
      body: ListView(children: <Widget>[
        imageSection,
        titleSection,
        description,
        ratting,
        risedButton,
      ]),
    );
  }
}
