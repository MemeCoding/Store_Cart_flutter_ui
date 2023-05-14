import 'package:flutter/material.dart';
import 'package:fruits_shop/constant.dart';

class DeliveryInformation extends StatefulWidget {
  const DeliveryInformation({super.key});

  @override
  State<DeliveryInformation> createState() => _DeliveryInformation();
}

class _DeliveryInformation extends State<DeliveryInformation> {
  bool buttonState = true;

  void _buttonChange() {
    setState(() {
      buttonState = !buttonState;
    });
  }

  Widget build(BuildContext context) {
    String dropdownValue = '+84';
    var item = ['+84', '+89'];
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(appPadding / 2),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: white,
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(0.2),
              offset: Offset(5, 5),
              blurRadius: 10,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(appPadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Delivery Information',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  height: 50,
                  child: OutlinedButton(
                    child: Text(
                      "Home Delivery",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        return states.contains(MaterialState.disabled)
                            ? green // Disabled color
                            : grey; // Regular color
                      }),
                    ),
                    onPressed: buttonState ? _buttonChange : null,
                  ),
                ),
                Spacer(),
                Container(
                  width: 160,
                  height: 50,
                  child: OutlinedButton(
                    child: Text(
                      "Pick Up",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        return states.contains(MaterialState.disabled)
                            ? green // Disabled color
                            : grey; // Regular color
                      }),
                    ),
                    onPressed: buttonState ? null : _buttonChange,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5)),
                            borderSide: BorderSide(
                              color: grey,
                            )),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 59,
                  height: 59,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                      border:
                          Border.all(style: BorderStyle.solid, width: 0.25)),
                  child: Icon(Icons.location_on_outlined),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
