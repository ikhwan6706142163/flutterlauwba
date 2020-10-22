import 'package:flutter/material.dart';
import 'package:layouting/menus/Home.dart';
import 'package:layouting/menus/Message.dart';
import '../halaman_utama/Dashboard.dart';

class PortalWisata extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Layouting',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
          // title: 'Belajar Layouting',
          ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [Home(), Message(), Message()];

  void onTaped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar pertama"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
          },
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTaped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              title: Text('Message'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.settings),
              title: Text('Menu'),
            ),
          ]),
    );
  }
}
