import 'package:flutter/material.dart';
import 'package:order_now/Constants/themes.dart';
import 'package:order_now/Data/foodCategoryData.dart';
import 'package:order_now/Models/foodCategoryModel.dart';

class FoodCategoryWidget extends StatefulWidget {
  @override
  _FoodCategoryWidgetState createState() => _FoodCategoryWidgetState();
}

class _FoodCategoryWidgetState extends State<FoodCategoryWidget> {
  List<FoodCategoryModel> _categories = foodcategories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          shrinkWrap: true,
          itemBuilder: (context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.only(bottom: 5),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        _categories[index].categoryImage,
                        scale: 1.0,
                        height: 100,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          _categories[index].categoryName,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Text(_categories[index].categoryPrice)
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
