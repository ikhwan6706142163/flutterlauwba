// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'Dashboard.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// enum LoginStatus { notSignIn, signIn }

// class _LoginState extends State<Login> {
//   LoginStatus _loginStatus = LoginStatus.notSignIn;
//   String email, password;
//   final _key = new GlobalKey<FormState>();

//   bool _hideText = true;
//   showHide() {
//     setState(() {
//       _hideText = !_hideText;
//     });
//   }

//   check() {
//     final form = _key.currentState;
//     if (form.validate()) {
//       form.save();
//       login();
//     }
//   }

//   login() async {
//     final response = await http.post(
//         "http://192.168.18.146/api_login/login.php",
//         body: {"email": email, "password": password});
//     final data = jsonDecode(response.body);
//     int value = data['value'];
//     String pesan = data['message'];
//     String emailAPI = data['email'];
//     String namaAPI = data['nama'];
//     String id = data['id'];
//     if (value == 1) {
//       setState(() {
//         _loginStatus = LoginStatus.signIn;
//         savePref(value, emailAPI, namaAPI, id);
//       });
//       print(pesan);
//     } else {
//       print(pesan);
//     }
//   }

//   savePref(int value, String email, String nama, String id) async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     setState(() {
//       preferences.setInt("value", value);
//       preferences.setString("nama", nama);
//       preferences.setString("email", email);
//       preferences.setString("id", id);
//       preferences.commit();
//     });
//   }

//   var value;
//   getPref() async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     setState(() {
//       value = preferences.getInt("value");

//       _loginStatus = value == 1 ? LoginStatus.signIn : LoginStatus.notSignIn;
//     });
//   }

//   signOut() async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     setState(() {
//       preferences.setInt("value", null);
//       preferences.commit();
//       _loginStatus = LoginStatus.notSignIn;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     getPref();
//   }

//   @override
//   Widget build(BuildContext context) {
//     switch (_loginStatus) {
//       case LoginStatus.notSignIn:
//         return Scaffold(
//           body: Form(
//               key: _key,
//               child: ListView(
//                 padding: EdgeInsets.all(40.0),
//                 children: [
//                   Image.asset('assets/images/kucing1.jpg'),
//                   TextFormField(
//                     validator: (value) {
//                       if (value.isEmpty) {
//                         return 'Masukkan email';
//                       }
//                     },
//                     onSaved: (newValue) => email = newValue,
//                     decoration: InputDecoration(
//                       labelText: "email",
//                     ),
//                   ),
//                   TextFormField(
//                     validator: (value) {
//                       if (value.isEmpty) {
//                         return 'Masukkan password';
//                       }
//                     },
//                     obscureText: _hideText,
//                     onSaved: (newValue) => {password = newValue},
//                     decoration: InputDecoration(
//                       labelText: "password",
//                       suffixIcon: IconButton(
//                         onPressed: showHide,
//                         icon: Icon(_hideText
//                             ? Icons.visibility_off
//                             : Icons.visibility),
//                       ),
//                     ),
//                   ),
//                   MaterialButton(
//                     onPressed: () {
//                       check();
//                     },
//                     child: Text("Login"),
//                   )
//                 ],
//               )),
//         );
//         break;
//       case LoginStatus.signIn:
//         return MainMenu(signOut);
//         break;
//     }
//   }
// }

// // class _RegisterState extends State<Register> {

// class MainMenu extends StatefulWidget {
//   final VoidCallback signOut;
//   MainMenu(this.signOut);
//   @override
//   _MainMenuState createState() => _MainMenuState();
// }

// class _MainMenuState extends State<MainMenu> {
//   signOut() {
//     setState(() {
//       widget.signOut();
//     });
//   }

// //  String email = "", nama = "";
// //  TabController tabController;

//   getPref() async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     setState(() {
// //      email = preferences.getString("email");
// //      nama = preferences.getString("nama");
//     });
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getPref();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//           appBar: AppBar(
//             title: Text("Halaman Dashboard"),
//             actions: <Widget>[
//               IconButton(
//                 onPressed: () {
//                   signOut();
//                 },
//                 icon: Icon(Icons.lock_open),
//               )
//             ],
//           ),
//           body: Center(
//             child: Text("Dashboard"),
//           )),
//     );
//   }
// }
import 'dart:convert' as convert;

import 'package:http/http.dart';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

enum LoginStatus { notSignIn, signIn }

class _LoginState extends State<Login> {
  TextEditingController emailController = new TextEditingController();
  LoginStatus _loginStatus = LoginStatus.notSignIn;
  String email, password;
  final _key = new GlobalKey<FormState>();

  bool _secureText = true;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  check() {
    final form = _key.currentState;
    if (form.validate()) {
      form.save();
      login();
    }
  }

  Future<List<dynamic>> login() async {
    Response response = await this.get('https://www.lauwba.com/webservices/get_latest_news');
    Map result = convert.jsonDecode(response.body);
    print(result);
    return result['data'];
  }


// http://192.168.18.146/api_login/login.php
  // login() async {
  //   // final Future<Map<String, dynamic>> post;
  //   final response =
  //       await http.post("http://192.168.18.146/api_login/connect.php"
  //           // body: {"email": email, "password": password}
  //           );
  //   print("============");
  //   print(response.toString());
    // .then((http.Response response) =>
    //         {print("============"), print(response.toString())});
    // final data = jsonDecode(response.body);
    // int value = data['value'];
    // String pesan = data['message'];
    // String emailAPI = data['email'];
    // String namaAPI = data['nama'];
    // String id = data['id'];
    // if (value == 1) {
    //   setState(() {
    //     _loginStatus = LoginStatus.signIn;
    //     savePref(value, emailAPI, namaAPI, id);
    //   });
    //   print(pesan);
    // } else {
    //   print(pesan);
    // }
  }

  savePref(int value, String email, String nama, String id) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("value", value);
      preferences.setString("nama", nama);
      preferences.setString("email", email);
      preferences.setString("id", id);
      preferences.commit();
    });
  }

  var value;
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      value = preferences.getInt("value");

      _loginStatus = value == 1 ? LoginStatus.signIn : LoginStatus.notSignIn;
    });
  }

  signOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("value", null);
      preferences.commit();
      _loginStatus = LoginStatus.notSignIn;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPref();
  }

  @override
  Widget build(BuildContext context) {
    switch (_loginStatus) {
      case LoginStatus.notSignIn:
        return Scaffold(
          appBar: AppBar(
            title: Text("Login"),
          ),
          body: Form(
            key: _key,
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: <Widget>[
                TextFormField(
                  validator: (e) {
                    if (e.isEmpty) {
                      return "Please insert email";
                    }
                  },
                  onSaved: (e) => email = e,
                  decoration: InputDecoration(
                    labelText: "email",
                  ),
                ),
                TextFormField(
                  obscureText: _secureText,
                  onSaved: (e) => password = e,
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: IconButton(
                      onPressed: showHide,
                      icon: Icon(_secureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    check();
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        );
        break;
      case LoginStatus.signIn:
        return MainMenu(signOut);
        break;
    }
  }
}

// class _RegisterState extends State<Register> {

class MainMenu extends StatefulWidget {
  final VoidCallback signOut;
  MainMenu(this.signOut);
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  signOut() {
    setState(() {
      widget.signOut();
    });
  }

//  String email = "", nama = "";
//  TabController tabController;

  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
//      email = preferences.getString("email");
//      nama = preferences.getString("nama");
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPref();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Halaman Dashboard"),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  signOut();
                },
                icon: Icon(Icons.lock_open),
              )
            ],
          ),
          body: Center(
            child: Text("Dashboard"),
          )),
    );
  }
}
