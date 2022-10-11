import 'package:flutter/material.dart';

import 'input_page.dart';
class resultPage extends StatelessWidget {

  resultPage({
    required this.bmiResult,
    required this.intrepretation,
    required this.resultText,

});
  final String bmiResult;
  final String resultText;
  final String intrepretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('BMI Calculater'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child : Container(
              child: Text(
                "your result",
                 style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
          ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(10),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
              ),
                 child: Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: (Column(
                     children: [
                       Text(
                           resultText,
                         style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 25,
                         ),
                       ),
                       Text(
                         bmiResult,
                         style: TextStyle(
                           fontSize: 50,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       Text(
                         intrepretation,
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 23,
                         ),
                       )
                     ],
                   )),
                 ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> InputPage()));
            },
            child: Container(
              color: Colors.pink,
              width: double.infinity,
              height: bottomHightOfContainer,
              child: Center(
                child: Text("Re Calculate",
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
