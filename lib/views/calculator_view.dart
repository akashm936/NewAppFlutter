import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter First Number",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
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
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Second Number",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
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
              "0",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.indigo.shade300,
                  child: Icon(Icons.add,color: Colors.white,),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.indigo.shade300,
                  child: Icon(Icons.remove,color: Colors.white,   ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.indigo.shade300,
                  child: Icon(CupertinoIcons.multiply,color: Colors.white,),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.indigo.shade300,
                  child: Icon(CupertinoIcons.divide,color: Colors.white,),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.indigo.shade300,
                  child: Text("C",style: TextStyle(fontSize: 20,color: Colors.white,),),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
        
              children: [
                
              ],
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
