import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:layouting/menus/Home.dart';
import 'package:layouting/menus/LokasiWisata.dart';
import 'package:layouting/menus/Message.dart';
import 'package:layouting/menus/PortalWisata.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "dashboard",
      home: DashboardDetail(),
    );
  }
}

class DashboardDetail extends StatefulWidget {
  @override
  _DashboardDetailState createState() => _DashboardDetailState();
}

class _DashboardDetailState extends State<DashboardDetail> {
  static final List imgList = [
    NetworkImage(
        "https://www.javatravel.net/wp-content/uploads/2019/10/Pura-Jala-Siddhi-Amerta.jpeg"),
    NetworkImage(
        "https://www.javatravel.net/wp-content/uploads/2019/10/Pura-Jala-Siddhi-Amerta.jpeg"),
    NetworkImage(
        "https://www.javatravel.net/wp-content/uploads/2019/10/Pura-Jala-Siddhi-Amerta.jpeg")
  ];
  @override
  Widget build(BuildContext context) {
    Widget body = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "The Special Region of Yogyakarta (Indonesian: Daerah Istimewa Yogyakarta, pronounced /ˌjɒɡjəˈkɑːrtə/) is a provincial-level autonomous region of Indonesia in the southern Java.[5] "
              "It is bordered by the Indian Ocean to the south, as well as sharing all the land borders to the province of Central Java. Ruled by the Yogyakarta Sultanate, the region is the only officially recognised monarchy within the government of Indonesia. "
              "The city of Yogyakarta is the capital and the economic center of the region.The Yogyakarta Sultanate has been established since 1755 and provided an unwavering support for Indonesia's independence during the Indonesian National Revolution (1945–1949). "
              "As a first-level division in Indonesia, Yogyakarta is governed by Sultan Hamengkubuwono as the governor and Prince Paku Alam as the vice governor. With a land area of 3,185.8 km², it is the second-smallest province of Indonesia after Jakarta.[6]"),
        ],
      ),
    );
    // Widget drawer = Drawer(
    //   child: ListView(
    //     children: <Widget>[
    //       UserAccountsDrawerHeader(
    //           decoration: BoxDecoration(
    //             image: DecorationImage(
    //                 image: AssetImage("graphics/bg.jpg"), fit: BoxFit.fill),
    //           ),
    //           currentAccountPicture: CircleAvatar(
    //             child: Text("A"),
    //             backgroundColor: Colors.white,
    //           ),
    //           accountName: Text("Admin"),
    //           accountEmail: Text("admin@example.com")),
    //       Container(
    //         padding: EdgeInsetsDirectional.only(start: 20.0, top: 10.0),
    //         child: Text("Menu Utama"),
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.dashboard),
    //         title: Text("Dashboard"),
    //         onTap: null,
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.web),
    //         title: Text("Portal Berita"),
    //         onTap: () {
    //           Navigator.of(context).pop();
    //           Navigator.push(
    //               context, MaterialPageRoute(builder: (context) => Message()));
    //         },
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.map),
    //         title: Text("Lokasi Wisata"),
    //         onTap: () {
    //           Navigator.of(context).pop();
    //           Navigator.push(
    //               context, MaterialPageRoute(builder: (context) => Message()));
    //         },
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.videocam),
    //         title: Text("Video Wisata"),
    //         onTap: () {
    //           Navigator.of(context).pop();
    //           Navigator.push(
    //               context, MaterialPageRoute(builder: (context) => Message()));
    //         },
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.photo_library),
    //         title: Text("Galeri Wisata"),
    //         onTap: () {
    //           Navigator.of(context).pop();
    //           Navigator.push(
    //               context, MaterialPageRoute(builder: (context) => Message()));
    //         },
    //       ),
    //       Divider(
    //         color: Colors.grey,
    //         height: 1,
    //       ),
    //       Container(
    //         padding: EdgeInsetsDirectional.only(start: 20.0, top: 10.0),
    //         child: Text("Lain-Lain"),
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.person),
    //         title: Text("Tentang Pengembang"),
    //         onTap: null,
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.power_settings_new),
    //         title: Text("Keluar"),
    //         onTap: () {
    //           SystemNavigator.pop();
    //         },
    //       ),
    //     ],
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text("hallo"),
      ),
      body: body,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/a.jpg'),
                      fit: BoxFit.fill),
                ),
                currentAccountPicture: CircleAvatar(
                  child: Text("A"),
                  backgroundColor: Colors.white,
                ),
                accountName: Text("Admin"),
                accountEmail: Text("admin@example.com")),
            Container(
              padding: EdgeInsetsDirectional.only(start: 20.0, top: 10.0),
              child: Text("Menu Utama"),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text("Portal Wisata"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PortalWisata()));
              },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text("Lokasi Wisata"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LokasiWisata()));
              },
            ),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text("Video Wisata"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Message()));
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_library),
              title: Text("Galeri Wisata"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Message()));
              },
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            Container(
              padding: EdgeInsetsDirectional.only(start: 20.0, top: 10.0),
              child: Text("Lain-Lain"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Tentang Pengembang"),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text("Keluar"),
              onTap: () {
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
