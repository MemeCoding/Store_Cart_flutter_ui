import 'package:flutter/material.dart';

class FruitsAndVeges {
  final String imageUrl;
  final String name;
  final double price;
  final int weight;

  FruitsAndVeges(this.imageUrl, this.name, this.price, this.weight);
}

final _mango =
    FruitsAndVeges('assets/fruits/mango.png', 'Fresh Mango', 3.00, 1);

final _banana =
    FruitsAndVeges('assets/fruits/banana.png', 'Fresh Yellow Banana', 6.00, 15);

final _pineapple =
    FruitsAndVeges('assets/fruits/pineaplle.png', 'Fresh Pineapple', 6.00, 1);

final _cherry =
    FruitsAndVeges('assets/fruits/cherries.png', 'Fresh Cherry', 6.00, 1);

final _apple =
    FruitsAndVeges('assets/fruits/apple.png', 'Fresh Apple', 6.00, 1);

final _ginger = FruitsAndVeges('assets/fruits/ginger.png', 'Ginger', 6.00, 1);

final _carot = FruitsAndVeges('assets/fruits/carrots.png', 'Carrot', 6.00, 3);

final List<FruitsAndVeges> nexus_memeber_deals = [_mango, _banana, _ginger];

final List<FruitsAndVeges> keells_deals = [_apple, _cherry, _pineapple, _carot];
