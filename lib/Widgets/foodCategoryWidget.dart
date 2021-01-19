import 'package:flutter/material.dart';
import 'package:order_now/Data/foodCategoryData.dart';
import 'package:order_now/Models/foodCategoryModel.dart';

class FoodCategoryWidget extends StatelessWidget {
  List<FoodCategoryModel> _categories = foodcategories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //scrollDirection: Axis.vertical,
      itemCount: _categories.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 16),
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_categories[index].categoryName),
              Card(
                //color: Themes.cardBackgroudColor,
                margin: EdgeInsets.only(bottom: 5),
                //elevation: Dimension.card_elevation,
                elevation: 5,
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
                ),
              ),
              /* Text(
                _categories[index].noOfCategoryItem,
              ),*/
            ],
          ),
        );
      },
    );
  }
}
