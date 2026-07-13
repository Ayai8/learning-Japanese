import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({Key? key, this.text, this.color , this.onTap}) : super(key: key);
  Function()? onTap;
  final String? text;
  final Color? color;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        color: color,
        height: 65,
        width: double.infinity,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
