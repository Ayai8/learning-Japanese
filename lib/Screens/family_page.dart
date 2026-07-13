import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/item_model.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({Key? key}) : super(key: key);

  final List<ItemModel> family = const [
    ItemModel(
      name: 'father',
      jname: 'chichi',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      name: 'mother',
      jname: 'haha',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      name: 'son',
      jname: 'musuko',
      image: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      name: 'daughter',
      jname: 'musume',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/family_members/daughter.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: const Color(0xff768E78),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return Item(item: family[index]);
        },
      ),
    );
  }
}