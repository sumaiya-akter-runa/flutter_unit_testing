import 'package:flutter/material.dart';
import 'my_function.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var hourController= TextEditingController();
  int? salary;
  MyFunction mf=MyFunction();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(height: 20,),


          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: hourController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter hour"
              ),
            ),
          ),

          SizedBox(height: 20,),

          ElevatedButton(
              onPressed: (){
                int hour= int.parse(hourController.text.toString());
                setState(() {
                  salary=mf.calculateSalary(hour);
                });
              },
              child: Text("Calculate",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              style: ElevatedButton.styleFrom( backgroundColor: Colors.blue,)),

          if(salary !=null) ...[
            SizedBox(height: 20,),
            Text("Total Salary= Tk $salary")
          ]

        ],
      ),
    );
  }
}