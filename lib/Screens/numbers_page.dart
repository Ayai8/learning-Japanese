import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/item_model.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({Key? key}) : super(key: key);

  final List<ItemModel> numbers = const [
    ItemModel(
      name: 'one',
      jname: 'ichi',
      image: 'assets/images/numbers/number_one.png',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      name: 'two',
      jname: 'ni',
      image: 'assets/images/numbers/number_two.png',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(
      name: 'three',
      jname: 'san',
      image: 'assets/images/numbers/number_three.png',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(
      name: 'four',
      jname: 'shi',
      image: 'assets/images/numbers/number_four.png',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(
      name: 'five',
      jname: 'go',
      image: 'assets/images/numbers/number_five.png',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(
      name: 'six',
      jname: 'roku',
      image: 'assets/images/numbers/number_six.png',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemModel(
      name: 'seven',
      jname: 'nana',
      image: 'assets/images/numbers/number_seven.png',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemModel(
      name: 'eight',
      jname: 'hachi',
      image: 'assets/images/numbers/number_eight.png',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    ItemModel(
      name: 'nine',
      jname: 'kyuu',
      image: 'assets/images/numbers/number_nine.png',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemModel(
      name: 'ten',
      jname: 'juu',
      image: 'assets/images/numbers/number_ten.png',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff768E78),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(item: numbers[index]);
        },
      ),
    );
  }
}