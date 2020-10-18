import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  var androidVersions = [
    "Android Cupcake",
    "Android Donut",
    "Android Eclair",
    "Android Froyo",
    "Android Gingerbread",
    "Android Honeycomb",
    "Android Ice Cream Sandwich",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lollipop",
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie",    
    "Android Cupcake",
    "Android Donut",
    "Android Eclair",
    "Android Froyo",
    "Android Gingerbread",
    "Android Honeycomb",
    "Android Ice Cream Sandwich",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lollipop",
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie"
  ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
    //  appBar: AppBar(
    //     title: Text("Flutter ListView"),
    //   ),
      body: ListView.builder(
        itemCount: androidVersions.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
          ListTile(
            title: Text(androidVersions[index]),
          ),
                const Divider(
            color: Colors.black,
            height: 10,
            thickness: 0.5,
            indent: 15,
            endIndent: 15,
          ),
            ],
          );
            // padding: const EdgeInsets.all(20.0),
            // child: Text(androidVersions[index]),
        },
      ),
    );
  }
}