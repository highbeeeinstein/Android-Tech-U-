import 'package:flutter/material.dart';

import 'dashboard.dart';
class Check_result extends StatefulWidget {
  const Check_result({ Key? key }) : super(key: key);

  @override
  _Check_resultState createState() => _Check_resultState();
}

class _Check_resultState extends State<Check_result> {
  // String _dropDownValue ='One';
   late String _chosenValue = 'Select Session';
    late String _pickedValue = 'Select Semester';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
            Alaye(),
        ],
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/logo_login.png',
          width: 100,
          height: 50,
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
      ),
      drawer: myDrawer(context),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Text("VIEW RESULT", style: TextStyle(color: Colors.red, fontSize: 25.0),),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                width: 1400.0,
                height: 370.0,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text("Academic Session", style: TextStyle(fontSize: 25),),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Text("Session", style: TextStyle(color: Colors.brown, fontSize: 19),),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                    Container(
                    
                      width: 1300.0,
                      child: DropdownButton<String>(
                        iconEnabledColor: Colors.black,
                        isExpanded: true,
                        iconSize: 20.0,
                        // dropdownColor: Colors.blue,
                        focusColor: Colors.blue,
                        value: _chosenValue,
              //elevation: 5,
                         style: TextStyle(color: Colors.black),

                items: <String>[
                'Select Session',
                '2017/2018',
                '2018/2019',
                '2019/2020',
                '2020/2021',
                // 'Java',
                // 'Python',
                // 'PHP',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, textAlign: TextAlign.center, 
                  style: TextStyle(fontSize: 20, decorationColor: Colors.blue),),
                );
              }).toList(),
              hint: Text(
                "Select Session",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              onChanged: ( value) {
                setState(() {
                  _chosenValue = value.toString();
                });
              },
          ),
   
                    ),
                  SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Text("Semester", style: TextStyle(color: Colors.brown, fontSize: 19),),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                    
                      width: 1300.0,
                      child: DropdownButton<String>(
                        iconEnabledColor: Colors.black,
                        isExpanded: true,
                        iconSize: 20.0,
                        // dropdownColor: Colors.blue,
                        focusColor: Colors.blue,
                        value: _pickedValue,
              //elevation: 5,
                         style: TextStyle(color: Colors.black),

                items: <String>[
                'Select Semester',
                'First',
                'Second',
                // '2019/2020',
                // '2020/2021',
                // 'Java',
                // 'Python',
                // 'PHP',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, textAlign: TextAlign.center, 
                  style: TextStyle(fontSize: 20, decorationColor: Colors.blue),),
                );
              }).toList(),
              hint: Text(
                "Select Session",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              onChanged: ( value) {
                setState(() {
                  _pickedValue = value.toString();
                });
              },
          ),
   
                    ), 
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                        width: 200.0,
                        height: 50.0,
                       
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                           color: Colors.red,
                        ),
                        child: TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/view');
                          }, 
                          child: Text("View Result", style: TextStyle(color: Colors.white, fontSize: 17),)
                          ),
                      ),
                    )  
                     ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

