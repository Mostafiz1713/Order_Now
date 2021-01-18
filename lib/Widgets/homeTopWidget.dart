import 'package:flutter/material.dart';
import 'package:order_now/Constants/themes.dart';

class HomeTopWidget extends StatefulWidget {
  @override
  _HomeTopWidgetState createState() => _HomeTopWidgetState();
}

class _HomeTopWidgetState extends State<HomeTopWidget> {
  final textstyle = TextStyle(
    fontSize: 28.0,
    color: Themes.whiteText,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What would you like to eat ?",
            style: textstyle,
          ),
        ],
      ),
    );
  }
}
