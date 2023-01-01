import 'package:flutter/material.dart';
import 'package:task2/widgets/italic.dart';
class Date extends StatelessWidget {
  Date({required this.color1, super.key, required this.color2, required this.color3 ,required this.day,required this.datee,required this.when});
  final Color color1;
  final Color color2;
  final Color color3;
  String? day;
  String? datee;
  String? when;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 70,
       decoration: BoxDecoration(   
              borderRadius: BorderRadius.circular(10.0),
              color: color2,
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
      child: Column(
        children: [
          Container(
            width: 70,
            height: 50,
            decoration: BoxDecoration(   
              borderRadius: BorderRadius.circular(7.0),
              color: color1,
              
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Text("$day", style: TextStyle(color: color3,fontWeight: FontWeight.w700,fontSize: 20,),textAlign: TextAlign.center,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("$datee",style: TextStyle(fontSize: 15,color: Color(0xff949494)),textAlign: TextAlign.center,),
                Text("$when",style: TextStyle(fontSize: 12,color: Color(0xff949494)),textAlign: TextAlign.center,),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}