
import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/left_bar.dart';
import 'package:bmi_calculator/widgets/right_bar.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() =>_HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightcontroller = TextEditingController();
  TextEditingController _weightcontroller = TextEditingController();
  double bmi = 0;
  String textResult="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI calculator"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(

        child: Column(

          children: [
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightcontroller,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.deepOrange,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Height",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.yellow,
                      ),
                      border: InputBorder.none,
                    ),
                  ),


                ),
                Container(
                  width:130,
                  child: TextField(
                    controller: _weightcontroller,
                    style:TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.deepOrange,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Weight",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.yellow,
                      ),
                    ),

                  ),
                ),
              ],
            ),

            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                double h=double.parse(_heightcontroller.text);
                double w=double.parse(_weightcontroller.text);
                setState(() {
                  bmi=w/(h*h);
                  if(bmi>25){
                    textResult="You are overweight";
                  }
                  else if(bmi>18.5&&bmi<25)
                    {
                      textResult="you are normal weight";
                    }
                  else
                    {
                      textResult="you are underweight";
                    }

                });

              },
              child:Container(
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.yellowAccent,
                  ),
                ),
              ),
            ),

            SizedBox(height: 30,),
            Container(
              child: Text(
                bmi.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 90,
                  fontWeight: FontWeight.w700,
                  color: Colors.yellowAccent,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Visibility(
              visible:textResult.isNotEmpty,
              child: Container(
                child: Text(
                  textResult,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: Colors.yellowAccent,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            LeftBar(barWidth: 40,),
            SizedBox(height: 30,),
            LeftBar(barWidth: 40,),
            SizedBox(height: 30,),
            LeftBar(barWidth: 40,),
            SizedBox(height: 30,),
            RightBar(barWidth: 70,),
            SizedBox(height: 30,),
            RightBar(barWidth: 70,),
            SizedBox(height: 30,),
            RightBar(barWidth: 70,),
          ],
        ),
      ),
    );
  }
}