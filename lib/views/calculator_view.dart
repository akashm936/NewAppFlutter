import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CalculatorView extends StatefulWidget {
  

  CalculatorView({super.key, });

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int num1 = 0;
  int num2 = 0;
  double result = 0.0;

  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _firstNumberController.text = num1.toString();
    _secondNumberController.text = num2.toString();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _firstNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter First Number",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.indigo.shade300,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
        
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.indigo.shade300,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _secondNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Second Number",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.indigo.shade300,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
        
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.indigo.shade300,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),


            SizedBox(height: 20),


            Text(
              "$result",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),


            SizedBox(height: 20),


            Spacer(),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                   setState(() {
                     result = double.parse(_firstNumberController.text) + double.parse(_secondNumberController.text);
                   });
                  },
                  backgroundColor: Colors.indigo.shade300,
                  child: Icon(Icons.add,color: Colors.white,),
                ),
                FloatingActionButton(
                  onPressed: () {
                   setState(() {
                     result = double.parse(_firstNumberController.text) - double.parse(_secondNumberController.text);
                   });
                  },
                  backgroundColor: Colors.indigo.shade300,
                  child: Icon(Icons.remove,color: Colors.white,   ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(_firstNumberController.text) * double.parse(_secondNumberController.text);
                    });
                  },
                  backgroundColor: Colors.indigo.shade300,
                  child: Icon(CupertinoIcons.multiply,color: Colors.white,),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(_firstNumberController.text) / double.parse(_secondNumberController.text);
                    });
                  },
                  backgroundColor: Colors.indigo.shade300,
                  child: Icon(CupertinoIcons.divide,color: Colors.white,),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      num1 = 0;
                      num2 = 0;
                      result = 0;
                      _firstNumberController.clear();
                      _secondNumberController.clear();
                    });
                  },
                  backgroundColor: Colors.indigo.shade300,
                  child: Text("C",style: TextStyle(fontSize: 20,color: Colors.white,),),
                ),
              ],
            ),


            SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}
