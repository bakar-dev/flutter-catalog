import 'package:flutter/material.dart';
import 'package:flutter_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Column(children: [
        Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
        SizedBox(height: 20),
        Text("Welcome $name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(children: [
            TextFormField(decoration: InputDecoration(hintText: "Enter Username", labelText: "Username"), 
            onChanged: (value){
              name=value;
              setState(() {

              });
            },),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: "Enter Password", labelText: "Password")),
              SizedBox(height: 20),
              InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },  
                child: Container(
                  height: 40, 
                  width: 150, 
                  alignment: Alignment.center,
                  child: Text("Login", style: TextStyle(fontSize: 15, color: Colors.white),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),  
                    color: Colors.indigo,
                  ),
                ),
               ),
          ],),
        )
      ],)
      )
    );
  }
}