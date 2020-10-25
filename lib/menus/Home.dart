import 'package:flutter/material.dart';
import 'package:layouting/SplashScreen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: SplashScreen.id,
      // routes: {
      //   SplashScreen.id: (context) => HomePage(),
      // },
      debugShowCheckedModeBanner: false,
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
  static final List<String> imgSldr = [
    'kucing1.jpg', //index 0
    'kucing2.jpg', //index 1
    'kucing3.jpg', //index 2
    // 'https://mmc.tirto.id/image/otf/700x0/2019/01/08/kucing-sedih-istockphoto_ratio-16x9.jpg'
  ];
  String _gantiText = "ikang tengiri enak bro";
  // final CarouselSlider imageSection = CarouselSlider(
  //   items: imgSldr.map((e) {
  //       return Container(
  //         margin: EdgeInsets.all(5.0),
  //         child: ClipRRect(
  //           borderRadius:BorderRadius.circular(10),
  //           // ignore: unnecessary_brace_in_string_interps
  //           child: Image.asset('assets/images/${e}',
  //           width: 10000,
  //           fit: BoxFit.cover
  //           )
  //         )
  //       );
  //     }).toList(),
  //   // child: Image.asset('assets/images/a.jpg'),
  // );

  @override
  Widget build(BuildContext context) {
    final CarouselSlider imageSection = CarouselSlider(
        items: imgSldr.map((e) {
          return Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  // ignore: unnecessary_brace_in_string_interps
                  child: Image.asset('assets/images/${e}',
                      width: 10000, fit: BoxFit.cover)));
        }).toList(),
        // options: null,
        height: 150,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 2.0
        // child: Image.asset('assets/images/a.jpg'),
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
