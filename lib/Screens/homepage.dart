import 'package:flutter/material.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/family_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget buildCategory(BuildContext context, String text, Color color, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
      child: Container(
        height: 65,
        width: double.infinity,
        color: color,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 24),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color(0xffC6C09C),
      ),
      body: Column(
        children: [
          buildCategory(context, 'Numbers', const Color(0xff768E78), const NumberPage()),
          buildCategory(context, 'Family Members', const Color(0xffE8B772), const FamilyPage()),
        ],
      ),
    );
  }
}