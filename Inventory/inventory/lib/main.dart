import 'package:flutter/material.dart';
import 'package:inventory/Item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.only(left:10.0),
            color: Colors.white,
            child: Center(
              child: Text(
                  getItemName()
              ),
            ),
          ),
        ),
      )
    );
  }

  String getItemName(){
    Item item = new Item();
    item.setName("Play");
    return item.getName();
  }
}
