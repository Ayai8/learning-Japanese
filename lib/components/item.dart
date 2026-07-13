import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku/models/item_model.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.item}) : super(key: key);

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    return Container(
      color: const Color.fromARGB(225, 232, 205, 158),
      height: 80,
      child: Row(
        children: [
          Image.asset(item.image),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jname,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  item.name,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () async {
                await player.play(AssetSource(item.sound));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}