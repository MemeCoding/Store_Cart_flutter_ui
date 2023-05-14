import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:fruits_shop/models/fruits_veges.dart';
import 'package:fruits_shop/constant.dart';

class ListFruitsDeal extends StatelessWidget {
  ListFruitsDeal({required this.titleList, required this.fruitsList});
  final String titleList;
  final List<FruitsAndVeges> fruitsList;

  Widget _buildNMD(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    FruitsAndVeges fruitsAndVeges = fruitsList[index];
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: appPadding, right: appPadding / 2, bottom: appPadding),
          child: Container(
            width: size.width * 0.4,
            height: size.height * 0.2,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: grey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Text(
                        '${fruitsAndVeges.weight} KG',
                        style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Image(
                      height: size.height * 0.1,
                      fit: BoxFit.contain,
                      image: AssetImage(fruitsAndVeges.imageUrl),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.favorite_outline_sharp,
                      color: green,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: appPadding,
          top: 180,
          bottom: 0,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(fruitsAndVeges.name),
                Text(
                  '\$ ${fruitsAndVeges.price.toStringAsFixed(2)}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titleList,
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
        Container(
          height: size.height * 0.3,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: nexus_memeber_deals.length,
              itemBuilder: (context, index) {
                return _buildNMD(context, index);
              }),
        )
      ],
    );
  }
}
