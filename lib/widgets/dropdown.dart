import 'package:flutter/material.dart';
import 'package:task2/widgets/italic.dart';

class Drop extends StatefulWidget {
  const Drop({super.key});

  @override
  State<Drop> createState() => _DropState();
}

class _DropState extends State<Drop> {
  String selectedValue = "1";
  @override
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
        padding:  EdgeInsets.symmetric(horizontal: 10),
        child: DropdownButton(
          value: selectedValue,
          icon: Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Icon(Icons.arrow_downward),
          ),
          alignment: Alignment.center,
                  
          onChanged: (String? newValue){
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: dropdownItems, 
          
          ),
      ),
    );
  }
}



class Drop2 extends StatefulWidget {
  const Drop2({super.key});

  @override
  State<Drop2> createState() => _Drop2State();
}

class _Drop2State extends State<Drop2> {
  String selectedValue = "1";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: Container(
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
          padding:  EdgeInsets.symmetric(horizontal: 10),
          child: DropdownButton(
            value: selectedValue,
            icon: Padding(
              padding: const EdgeInsets.only(left: 280),
              child: Icon(Icons.arrow_downward),
            ),
            alignment: Alignment.center,
                    
            onChanged: (String? newValue){
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: dropdownItems2, 
            
            ),
        ),
      ),
    );
  }
}


List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Every week"),value: "1"),
    DropdownMenuItem(child: Text("Every week 1"),value: "2"),
    DropdownMenuItem(child: Text("Every week 2"),value: "3"),
    DropdownMenuItem(child: Text("Every week 3"),value: "4"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get dropdownItems2{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("1"),value: "1"),
    DropdownMenuItem(child: Text("2"),value: "2"),
    DropdownMenuItem(child: Text("3"),value: "3"),
    DropdownMenuItem(child: Text("4"),value: "4"),
  ];
  return menuItems;
}