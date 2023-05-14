import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:fruits_shop/models/categories.dart';
import 'package:fruits_shop/constant.dart';

class AllCategories extends StatelessWidget {
  Widget _buildNMD(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Category fruitsAndVeges = all_categories[index];
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: appPadding, right: appPadding / 8),
              child: Container(
                width: size.width * 0.3,
                height: size.height * 0.2,
                decoration: BoxDecoration(
                  color: white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: black.withOpacity(0.2),
                      offset: Offset(5, 5),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(appPadding / 2),
                  child: Center(
                    child: Image(
                      height: size.height * 0.055,
                      fit: BoxFit.contain,
                      image: AssetImage(fruitsAndVeges.imageUrl),
                      opacity: AlwaysStoppedAnimation(.2),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: appPadding * 2, right: appPadding / 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    fruitsAndVeges.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: black.withOpacity(.2),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: appPadding, right: appPadding, top: appPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'All Categories',
                style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View All >',
                  style: TextStyle(color: green, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            height: size.height * 0.25,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: all_categories.length,
                itemBuilder: (context, index) {
                  return _buildNMD(context, index);
                }),
          ),
        )
      ],
    );
  }
}
