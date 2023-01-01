import 'package:flutter/material.dart';
import 'package:task2/widgets/italic.dart';

class Time extends StatelessWidget {
  Time({super.key,required this.color,required this.timee, required this.color1});
  final Color color;
  final Color color1;
  String? timee;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      width: 100,
      height: 40,
      decoration: BoxDecoration(   
              borderRadius: BorderRadius.circular(10.0),
              
              color: color,
              boxShadow: [
                BoxShadow(
                  color: Color(0xffA4A4A4),
                  blurRadius: 6.0,
                  spreadRadius: 1.0,
                  offset: Offset(0.0, 0.0),
                  // Shadow position
                ),
              ],
            ),
      child: Text("$timee",style: TextStyle(fontSize: 12,color:color1 ,fontStyle: FontStyle.italic),textAlign: TextAlign.center,),     
    );
  }
}