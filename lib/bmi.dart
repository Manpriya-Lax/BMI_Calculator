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
int weight = 80;
int age = 24;
  
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
          Text("Male", style: TextStyle(fontSize: 40, color: sTextcolor)),
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
          Text("Female", style: TextStyle(fontSize: 40, color: sTextcolor)),
        ],
      ),
    ),
  ),
),

                    
                  
                  ],
             
                  
                ),

                const SizedBox(height: 50,),


                Container(
               decoration: kboxdecoration,
                 padding: EdgeInsets.all(20),

                  child: Column(
                    children: [
                      Text("height" , style: TextStyle(color: sTextcolor,fontSize: 30),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text( "187 ",style: TextStyle(fontSize: 40 ,fontWeight: FontWeight.bold,color: sTextcolor),),
                          Text(" cm", style: TextStyle(color: sTextcolor,fontSize: 30),),
                  
                        ],
                      ),
                      Slider(min:100.0,max:200.0, value: 187.0 , onChanged: (value){}),
                    ],
                  ),
                ),

                const SizedBox(height: 50,),

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
                            Text(" 80 " , style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold,color: sTextcolor)),
                            Row (
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              ElevatedButton(onPressed: (){}, child: Text("-")),
                              ElevatedButton(onPressed: (){}, child: Text("+")),
                        
                        
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
                            Text(" 24 " ,  style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold,color: sTextcolor)),
                            Row (
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              ElevatedButton(onPressed: (){}, child: Icon(  Icons.remove)),
                              ElevatedButton(onPressed: (){}, child: Icon(Icons.add)),
                        
                        
                            ],)
                        
                            
                          ],
                          
                        ),
                      ),
                    ),
                  ],
                )

              ],
                         ),
              SizedBox(height: 50,),
            ElevatedButton(onPressed:() {}, child: Text("calculate BMI"))
          ],
        ),
      ),  
    );
  }
}