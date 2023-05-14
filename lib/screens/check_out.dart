import 'package:flutter/material.dart';
import 'package:fruits_shop/constant.dart';
import 'package:fruits_shop/constant.dart';
import 'package:fruits_shop/screens/components/checkout/cart_summary.dart';
import 'package:fruits_shop/screens/components/checkout/delivery_infomation.dart';
import 'package:fruits_shop/screens/components/checkout/recipient_details.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPage();
}

class _CheckOutPage extends State<CheckOutPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        backgroundColor: green,
        leading: Padding(
          padding: EdgeInsets.all(appPadding / 2),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          CartSummary(),
          RecipientDetails(),
          DeliveryInformation()
        ]),
      ),
    );
  }
}
