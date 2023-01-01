import 'package:flutter/material.dart';
import 'package:task2/widgets/italic.dart';

class Repeat extends StatefulWidget {
  const Repeat({super.key});

  @override
  State<Repeat> createState() => _RepeatState();
}

class _RepeatState extends State<Repeat> {
  @override
  bool isSwitched = false;  
  void toggleSwitch(bool value) {  
  
    if(isSwitched == false)  
    {  
      setState(() {  
        isSwitched = true;   
      });  
      print('Switch Button is ON');  
    }  
    else  
    {  
      setState(() {  
        isSwitched = false;   
      });  
      print('Switch Button is OFF');  
    }  
  }  


  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(   
        borderRadius: BorderRadius.circular(10.0),           
              color: Colors.white,
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
          padding:  EdgeInsets.symmetric(horizontal:15 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Repeat Pickup",style: TextStyle(fontSize: 16,color:Color(0XFF888888) ,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),  
              Switch(value: isSwitched, onChanged:toggleSwitch )  
            ],
          ),
        ),    
    );
  }
}