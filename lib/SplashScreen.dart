import 'dart:async';
import 'package:flutter/material.dart';
import 'package:layouting/halaman_utama/Login.dart';
import 'package:layouting/menus/Home.dart';

// class SplashScreen extends StatefulWidget {
//   static const String id = "splashscreen";
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   Timer _timer;

//   removeScreen() {
//     return _timer = Timer(Duration(seconds: 2), () {
//       Navigator.of(context).pushReplacementNamed(SplashScreen.id);
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     removeScreen();
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).primaryColor,
//       body: Center(
//         child: Image(
//           width: 150,
//           color: Colors.white,
//           image: AssetImage("assets/images/a.jpg"),
//         ),
//       ),
//     );
//   }
// }
class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.add_chart,
              size: 100.0,
              color: Colors.white,
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              "TokoKu",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
