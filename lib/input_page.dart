import 'package:flutter/material.dart';
import 'result_page.dart';
import 'calculater_brain.dart';

const bottomHightOfContainer=80.0;
const activeCardColor= Color(0xFF1D1E33);
const inactive= Color(0xFF111328);


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);


  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height=180;
  int weight=60;
  int age=18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text ("BMI Calculater"),
        ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(

                child: GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    margin: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                        color: activeCardColor,
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male_outlined,
                          size: 60,
                          color: Colors.white,
                        ),
                        Text("MALE",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                )

              ),
              Container(
                child: Expanded(
                    child: Container(
                     margin: EdgeInsets.all(10),

                      decoration: BoxDecoration(
                      color: activeCardColor,
                      borderRadius: BorderRadius.circular(10)
                  ),

                  child: Column(
                    children: [
                      Icon(
                        Icons.female_rounded,
                        size: 60,
                        color: Colors.white,
                      ),
                      Text("FEMALE",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),)
                    ],
                  ),
                )
                ),
              ),
            ],
          ),
          ),
          Expanded(child: Container(
            margin: EdgeInsets.all(10),

            decoration: BoxDecoration(
                color: activeCardColor,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text (
                  "Height",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight:  FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max:220.0,
                        activeColor: Colors.pink,
                        inactiveColor: Colors.grey,
                        onChanged: (double newValue)
                        {
                            setState(() {
                              height= newValue.round();
                            });
                        },
                      ),
                    ],
                  )
                ],

              ),
            ),
          ),
          ),
          Expanded(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(

                  child: Container(
                margin: EdgeInsets.all(10),

                decoration: BoxDecoration(
                    color: activeCardColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                      Text(
                        weight.toString(),
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(onPressed:() {
                             setState(() {
                               weight+=1;
                             });
                          },
                            constraints:BoxConstraints.tightFor(
                              width: 40,
                              height: 40,
                            ),
                            shape: CircleBorder(),
                            fillColor: Colors.grey,
                              child: Icon(
                                Icons.plus_one,
                                color: Colors.white,
                              ),
                          ),

                          RawMaterialButton(onPressed:() {
                             setState(() {
                               weight-=1;
                             });
                          },
                            constraints:BoxConstraints.tightFor(
                              width: 40,
                              height: 40,
                            ),
                            shape: CircleBorder(),
                            fillColor: Colors.grey,
                            child: Icon(
                              Icons.exposure_minus_1,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],

                ),
              )
              ),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: activeCardColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(onPressed:() {
                              setState(() {
                               age +=1;
                              });
                            },
                              constraints:BoxConstraints.tightFor(
                                width: 40,
                                height: 40,
                              ),
                              shape: CircleBorder(),
                              fillColor: Colors.grey,
                              child: Icon(
                                Icons.plus_one,
                                color: Colors.white,
                              ),
                            ),

                            RawMaterialButton(onPressed:() {
                              setState(() {
                                age-=1;
                              });
                            },
                              constraints:BoxConstraints.tightFor(
                                width: 40,
                                height: 40,
                              ),
                              shape: CircleBorder(),
                              fillColor: Colors.grey,
                              child: Icon(
                                Icons.exposure_minus_1,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )


              ),
            ],
          ),
          ),
                  GestureDetector(
                    onTap: (){
                      CalculaterBrain calc= CalculaterBrain(height: height, weight: weight);


                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> resultPage(
                            bmiResult: calc.CalculateBMI(),
                            resultText: calc.getResult(),
                            intrepretation: calc.getInterpretation(),
                          ),
                          ),
                      );
                    },
                    child: Container(
              color: Colors.pink,
              width: double.infinity,
              height: bottomHightOfContainer,
              child: Center(
                child: Text("Calculate",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                ),),
              ),),
                  ),
        ],
      ),
    );
  }
}