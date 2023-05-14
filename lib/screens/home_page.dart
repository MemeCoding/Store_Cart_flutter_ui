import 'package:flutter/material.dart';

import 'package:fruits_shop/screens/components/all_categories.dart';
import 'package:fruits_shop/models/fruits_veges.dart';
import 'package:fruits_shop/constant.dart';
import 'package:fruits_shop/screens/components/nexus_mem_deals.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<FruitsAndVeges> list1 = nexus_memeber_deals;
  List<FruitsAndVeges> list2 = keells_deals;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Keells',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
          backgroundColor: green,
          leading: Padding(
            padding: EdgeInsets.all(appPadding / 2),
            child: Icon(
              Icons.filter_alt_outlined,
              color: white,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: appPadding),
              child: Icon(
                Icons.search_outlined,
                color: white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: appPadding),
              child: Icon(
                Icons.notifications_none_outlined,
                color: white,
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AllCategories(),
          ListFruitsDeal(titleList: "Nexus Member Deals", fruitsList: list1),
          ListFruitsDeal(titleList: "Keells Deals", fruitsList: list2),
        ]),
      ),
    );
  }
}
