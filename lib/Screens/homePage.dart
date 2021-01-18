import 'package:flutter/material.dart';
import 'package:order_now/Constants/themes.dart';
import 'package:order_now/Widgets/homeTopWidget.dart';
import 'package:order_now/Widgets/searchBarWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.appBackground,
      body: ListView(
        padding: EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
        children: [
          HomeTopWidget(),
          SizedBox(
            height: 15.0,
          ),
          SearchBarWidget(),
        ],
      ),
    );
  }
}
