import 'package:flutter/material.dart';
import 'package:task2/widgets/italic.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 280,
      decoration: BoxDecoration(   
        borderRadius: BorderRadius.circular(10.0),           
              color: Color(0xff1FAAFF),
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
    child: Padding(
      padding:  EdgeInsets.symmetric(vertical: 10),
      child: Text("continue",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight:FontWeight.w600),textAlign: TextAlign.center,),
    ),
    );
  }
}