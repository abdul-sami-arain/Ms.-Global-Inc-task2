import 'package:flutter/material.dart';

class Italic extends StatelessWidget {
  String? tex;
   Italic({
    required this.tex,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("$tex ",style: TextStyle(
        color: Color(0XFF888888),
        fontStyle: FontStyle.italic,
        fontSize: 15
      ),),
    );
  }
}