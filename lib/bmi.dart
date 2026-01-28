import 'package:bmi/constant.dart';
import 'package:flutter/material.dart';

class BMIcal extends StatefulWidget {
  const BMIcal({super.key});

  @override
  State<BMIcal> createState() => _BMIcalState();
}

class _BMIcalState extends State<BMIcal> {

bool isMale = true;
double height = 187.0;
int weight = 70;
int age = 24;
  

  double calculateBMI({required int weight, required double height}) {
    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);
    return bmi;
  }

  Color BMIColor(double bmi) {
    if (bmi < 18.5) {
      return Colors.blue; // Underweight
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return Colors.green; // Normal weight
    } else if (bmi >= 25 && bmi < 29.9) {
      return Colors.orange; // Overweight
    } else {
      return Colors.red; // Obesity
    }
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Kbgcolor,
        foregroundColor: kfgcolor,
        title: Center(child: const Text('BMI Calculator')),
      ),

      backgroundColor: Kbgcolor,
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,

        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,

          children: [
             Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                    Expanded(
  flex: 10,
  child: GestureDetector(
    onTap: () {
      setState(() {
        isMale = true;
      });
    },
    child: Container(
      decoration: isMale ? kSelectboxdecoration : kboxdecoration,
      padding: EdgeInsets.all(20),
      child: const Column(
        children: [
          Icon(Icons.male, size: 50, color: sTextcolor),
          Text("Male", style: TextStyle(fontSize: 20, color: sTextcolor)),
        ],
      ),
    ),
  ),
),

                    const SizedBox(width: 20,),
                    Expanded(
  flex: 10,
  child: GestureDetector(
    onTap: () {
      setState(() {
        isMale = false;
      });
    },
    child: Container(
      decoration: !isMale ? kSelectboxdecoration : kboxdecoration,
      padding: EdgeInsets.all(20),
      child: const Column(
        children: [
          Icon(Icons.female, size: 50, color: sTextcolor),
          Text("Female", style: TextStyle(fontSize: 20, color: sTextcolor)),
        ],
      ),
    ),
  ),
),

                    
                  
                  ],
             
                  
                ),

                const SizedBox(height: 20,),


                Container(
               decoration: kboxdecoration,
                 padding: EdgeInsets.all(20),

                  child: Column(
                    children: [
                      Text("height" , style: TextStyle(color: sTextcolor,fontSize: 30),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(  height.toStringAsFixed(2),style: TextStyle(fontSize: 40 ,fontWeight: FontWeight.bold,color: sTextcolor),),
                          Text(" cm", style: TextStyle(color: sTextcolor,fontSize: 30),),
                  
                        ],
                      ),
                      Slider(
                        min:100.0,
                        max:200.0,
                         value: height ,
                          onChanged: (value){
                            setState(() {
                              height = value;
                            });
                          }
                          ),
                    ],
                  ),
                ),

                const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: kboxdecoration,
                      padding: EdgeInsets.all(20),
                      
                        child: Column(
                          children: [
                            Text("weight" , style: TextStyle(fontSize: 20,color: sTextcolor)),
                            Text(" $weight " , style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold,color: sTextcolor)),
                            Row (
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              ElevatedButton(onPressed: (){
                                setState(() {
                                  if (weight > 10)
                                  weight--;
                                });
                              }, child: Text("-")),
                              ElevatedButton(onPressed: (){
                                setState(() {
                                  if (weight < 300)
                                  weight++;
                                });
                              }, child: Text("+")),
                        
                        
                            ],)
                        
                            
                          ],
                          
                        ),
                      ),
                    ),
                     const SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                      decoration: kboxdecoration,
                      padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text("Age" ,style: TextStyle(fontSize: 20,color: sTextcolor)),
                            Text(" $age " ,  style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold,color: sTextcolor)),
                            Row (
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              ElevatedButton(onPressed: (){
                                setState(() {
                                  if (age > 1)
                                  age--;
                                });
                              }, child: Icon(  Icons.remove)),
                              ElevatedButton(onPressed: (){
                                setState(() {
                                  if (age < 120)
                                  age++;
                                });
                              }, child: Icon(Icons.add)),
                        
                        
                            ],)
                        
                            
                          ],
                          
                        ),
                      ),
                    ),
                  ],
                )

              ],
                         ),
              SizedBox(height: 20,),

              Container(
                decoration: kboxdecoration,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text("Your BMI is:" , style: TextStyle(color: sTextcolor,fontSize: 20),),
                    Text( calculateBMI(weight: weight, height: height).toStringAsFixed(2),style: TextStyle(fontSize: 40 ,fontWeight: FontWeight.bold,color:BMIColor(calculateBMI(weight: weight, height: height)) ),),
                  
                  ],
                ),  
              ),

               SizedBox(height: 20,),

            // ElevatedButton(onPressed:() {
            //   calculateBMI(weight: weight, height: height);
            // }, child: Text("calculate BMI"))
          ],
        ),
      ),  
    );
  }
}