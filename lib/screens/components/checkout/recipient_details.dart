import 'package:flutter/material.dart';
import 'package:fruits_shop/constant.dart';

class RecipientDetails extends StatefulWidget {
  const RecipientDetails({super.key});

  @override
  State<RecipientDetails> createState() => _RecipientDetails();
}

class _RecipientDetails extends State<RecipientDetails> {
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
              'Recipient Details',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: grey,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 75,
                  height: 58,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(style: BorderStyle.solid, width: 0.35)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: appPadding / 2),
                    child: DropdownButton(
                      value: dropdownValue,
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                      items: item.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: grey,
                            )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
