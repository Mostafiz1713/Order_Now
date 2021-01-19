import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_now/Constants/themes.dart';
import 'package:order_now/Data/foodCategoryData.dart';
import 'package:order_now/Models/foodCategoryModel.dart';
import 'package:order_now/Widgets/foodCategoryWidget.dart';
import 'package:order_now/Widgets/homeTopWidget.dart';
import 'package:order_now/Widgets/searchBarWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<FoodCategoryModel> _categories = foodcategories;

  var textStyleCategory = TextStyle(color: Themes.whiteText);
  var textStyleHeading = TextStyle(
    fontSize: 20,
    color: Themes.whiteText,
    fontWeight: FontWeight.bold,
  );

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
          SizedBox(
            height: 15.0,
          ),
          //FoodCategoryWidget(),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Popular',
                  style: textStyleHeading,
                ),
                Icon(
                  CupertinoIcons.forward,
                  color: Themes.darkOrange,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            height: 200,
            alignment: Alignment.topLeft,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: _categories.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Card(
                        //color: Themes.cardBackgroudColor,
                        margin: EdgeInsets.only(bottom: 5, right: 10),
                        //elevation: Dimension.card_elevation,
                        clipBehavior: Clip.antiAlias,
                        child: Image.network(
                          _categories[index].categoryImage,
                          scale: 1.0,
                          height: 100,
                          width: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 3),
                        child: Text(
                          _categories[index].categoryName,
                          style: textStyleCategory,
                        ),
                      ),
                      Text(
                        "Price : " + _categories[index].categoryPrice,
                        style: textStyleCategory,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
