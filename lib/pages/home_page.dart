import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int day = 30;
   final String name="Bakar";
    return Scaffold(
      appBar: AppBar( title: Text("Flutter Catalog"),),
        body: Center(
          child: Container(
            child: Text("Flutter Learning Just Started..within $day by $name"),
          ),
        ),
        drawer: Drawer(),
      );
  }
}