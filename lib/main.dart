import 'package:flutter/material.dart';
import 'package:layouting/SplashScreen.dart';
import 'package:layouting/halaman_utama/Dashboard.dart';
import 'package:layouting/menus/PortalWisata.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Title',
      home: SplashScreen(),
    );
  }
}
