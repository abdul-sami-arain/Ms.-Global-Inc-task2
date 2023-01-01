import 'package:flutter/material.dart';
import 'package:task2/widgets/cont.dart';
import 'package:task2/widgets/date.dart';
import 'package:task2/widgets/dropdown.dart';
import 'package:task2/widgets/italic.dart';
import 'package:task2/widgets/repeat.dart';
import 'package:task2/widgets/time.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
        appBar: AppBar(
          backgroundColor: Colors.white,
          shape: Border(
          bottom: BorderSide(
            color: Color(0XFF21ACFF),
            width: 2
          ),
          top: BorderSide(
            color: Color(0XFF21ACFF),
            width: 2
          ),
          left: BorderSide(
            color: Color(0XFF21ACFF),
            width: 2
          ),
          right: BorderSide(
            color: Color(0XFF21ACFF),
            width: 2
          ),
        ),
        elevation: 10,
        shadowColor: Color(0XFF21ACFF),
        leading: Icon(Icons.arrow_back,color: Color(0XFF21ACFF),),
        actions: <Widget>[

        IconButton(
          icon: Icon(Icons.menu,color:Color(0XFF21ACFF) ,),
          
          onPressed: () {
            
          },
        )
      ],),
      
        
        body: SingleChildScrollView (
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        child: Italic(tex: "When would you like your pickup?"),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Icon(Icons.calendar_month_outlined,color:Color(0XFF21ACFF) ,),
                    )  
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 15,),
                    Date(color1: Color(0xff808183),color2: Colors.white,color3: Colors.white,day: "Fri",datee: "25 Jun",when: "Yesterday",),
                    SizedBox(width: 15,),
                    Date(color1: Color(0xff1FAAFF),color2: Colors.white,color3: Colors.white,day: "Sat",datee: "26 Jun",when: "Today",),
                    SizedBox(width: 15,),
                    Date(color1: Color(0xffF9F9F9),color2: Colors.white,color3: Colors.black,day: "Sun",datee: "27 Jun",when: "Tomorrow",),
                    SizedBox(width: 15,),
                    Date(color1: Color(0xffF80B18),color2: Colors.white,color3: Colors.white,day: "Mon",datee: "29 Jun",when: "Blockday",),
                    SizedBox(width: 15,),
                  ],
                ),
                SizedBox(height: 30,),
                Text("Available Time Slots",style: TextStyle(
                    color: Color(0XFF888888),
                    fontSize: 15,
                    fontWeight: FontWeight.w800
                  ),
                  textAlign: TextAlign.center,
                  ),  
                SizedBox(height: 30,),  
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Time(color: Color(0xff1FAAFF), timee: "7am - 9pm", color1: Colors.white),
                          Time(color: Color(0xffF9F9F9), timee: "10am - 12pm", color1: Colors.black),
                          Time(color: Color(0xffF9F9F9), timee: "1pm - 2pm", color1: Colors.black),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        
                        children: [
                          Time(color: Color(0xffF9F9F9), timee: "4pm - 6pm", color1: Colors.black),
                          Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: Time(color: Color(0xffF9F9F9), timee: "8pm - 10pm", color1: Colors.black),
                          ),
                          
                        ],
                      ),
                      SizedBox(height: 20,),
                      Repeat(),
                      SizedBox(height: 20,),
                      Text("How Often Repeats?",style: TextStyle(
                              color: Color(0XFF888888),
                              fontSize: 15,
                              fontWeight: FontWeight.w800
                            ),
                            
                            ),  
                           SizedBox(height: 10,), 
                      Drop(),
                      SizedBox(height: 20,),
                      Text("How Many Times?",style: TextStyle(
                              color: Color(0XFF888888),
                              fontSize: 15,
                              fontWeight: FontWeight.w800
                            ),
                            
                            ),  
                           SizedBox(height: 10,), 
                      Drop2(),
                      SizedBox(height: 30,),
                      ContinueButton()
                    ],
                  ),
                  
                  
                )
              ],
           
            ),
          ),
        ),
      ),
    );
  }
}