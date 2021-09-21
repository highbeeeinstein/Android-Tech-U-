import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dashboard.dart';
class Bedspace extends StatefulWidget {
  const Bedspace({ Key? key }) : super(key: key);

  @override
  _BedspaceState createState() => _BedspaceState();
}

class _BedspaceState extends State<Bedspace> {
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
              padding: EdgeInsets.fromLTRB(10, 20, 12, 0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("BEDSPACE ALLOCATION"),
                // Text("125/18/1/0043", style: TextStyle(color: Colors.red, fontSize: 20),),
                // SizedBox(
                //   height: 10,
                // ),
                Text("WAHAB IBRAHEEM IYANDA", style: TextStyle(color: Colors.red, fontSize: 20),),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  width: 1400.0,
                  height: 100.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 30,
                          child: Stack(
                            
                            children: [
                              Positioned(
                                top: 2,
                                left: 15,
                                child: Icon(
                                  
                                  FontAwesomeIcons.chartBar, size: 30,),
                              ),
                            ],
                          )
                          ),
                      ),
                      Container(
                         padding: EdgeInsets.fromLTRB(0, 30, 10, 0),
                         child:
                      Column(
                        children: [
                          Text("Part 3", style: TextStyle(fontSize:25)),
                          Text("Level", style: TextStyle(fontSize:25))
                        ],
                      ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                 Container(
                  color: Colors.white,
                  width: 1400.0,
                  height: 100.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Container(
                        margin: EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 30,
                          child: Stack(
                            
                            children: [
                              Positioned(
                                top: 0,
                                left: 15,
                                child: Icon(
                                  
                                  FontAwesomeIcons.bullseye, size: 30,),
                              ),
                            ],
                          )
                          ),
                      ),
                      Container(
                        // padding: EdgeInsets.fromLTRB(0, 30, 10, 0),
                        // margin: EdgeInsets.fromLTRB(10, 0, 0, 0) ,
                         padding: EdgeInsets.fromLTRB(0, 30, 10, 0),
                        child: Column(
                          children: [
                            Text("Computer Science", style: TextStyle(fontSize:20)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Programme", style: TextStyle(fontSize:20))
                          ],
                        ),
                      ),
                      
                      
                    ],
                  ),
                ),
                 SizedBox(
                  height: 20.0,
                ),
                 Container(
                  color: Colors.white,
                  width: 1400.0,
                  height: 100.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Container(
                        margin: EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 30,
                          child: Stack(
                            
                            children: [
                              Positioned(
                                top: 0,
                                left: 15,
                                child: Icon(
                                  
                                  FontAwesomeIcons.calendarCheck, size: 30,),
                              ),
                            ],
                          )
                          ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 30, 10, 0),
                        child: Column(
                          children: [
                            Text("2020/2021", style: TextStyle(fontSize:20)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Current Session", style: TextStyle(fontSize:20))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 270.0,
                  width: 1400.0,
                  margin: EdgeInsets.all(5),
                  // padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 60, 30, 10),
                          child: Text(
                            "Dear WAHAB IBRAHEEM IYANDA \n (125/18/1/0043),", style: TextStyle(color:Colors.black,
                            fontSize: 17.0, fontWeight: FontWeight.bold
                            ),
                          
                            
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                          child: Text("Your Space Allocation for \n 2020/2021 Academic Session is:",
                                  style: TextStyle(fontSize: 19),
                          )),
                          Container(
                          padding: EdgeInsets.fromLTRB(30, 10, 25, 10),
                          child: Text("El-salem Male Hostel, Block 2, \n Room:15, Bed:3",
                                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                          ))
                       
                      ],
                    ),
                ),
                 SizedBox(
                  height: 10.0,
                ),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Column(
                //     children: [
                //       DataTable(
                //         // decoration: BoxDecoration(

                //         // ),
                        
                //           // headingRowColor: MaterialStateProperty.all(Colors.blueGrey),
                //           // dataRowColor: MaterialStateProperty.all(Colors.blueGrey),
                //           columns: [
                //             DataColumn(label: Text("S/N", style: TextStyle(fontSize: 20),)),
                //             DataColumn(label: Text("Course Code", style: TextStyle(fontSize: 20),)),
                //             DataColumn(label: Text("Course Name", style: TextStyle(fontSize: 20),)),
                //              DataColumn(label: Text("Session", style: TextStyle(fontSize: 20),)),
                //               DataColumn(label: Text("Semester", style: TextStyle(fontSize: 20),)),
                //                DataColumn(label: Text("Level", style: TextStyle(fontSize: 20),)),
                //             DataColumn(label: Text("Unit", style: TextStyle(fontSize: 20),)),
                //             // DataColumn(label: Text("Select")),
                //           ],
                //           rows: [
                //             DataRow(
                //                 color: MaterialStateProperty.all(Colors.white),
                //                 cells: [
                //                   DataCell(
                //                        Text("1", style: TextStyle(fontSize: 20),)
                                      
                //                           ),
                //                   DataCell(Text("CSC 301", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Structured Programming", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                //                 ]),
                //             DataRow(
                //                 // color: MaterialStateProperty.all(Colors.blueAccent),
                //                 cells: [
                //                   DataCell(
                //                        Text("2", style: TextStyle(fontSize: 20),)
                //                      ),
                //                   DataCell(Text("CSC 303", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Data Manangement", style: TextStyle(fontSize: 20),)),
                //                    DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                //                 ]),
                //             DataRow(
                //                 color: MaterialStateProperty.all(Colors.white),
                //                 cells: [
                //                   DataCell(
                //                        Text("3", style: TextStyle(fontSize: 20),)
                //                       ),
                //                   DataCell(Text("CSC 305", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("operating System", style: TextStyle(fontSize: 20),)),
                //                    DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("2", style: TextStyle(fontSize: 20),)),
                //                 ]),
                //             DataRow(
                //                 // color: MaterialStateProperty.all(Colors.blueAccent),
                //                 cells: [
                //                   DataCell(
                //                        Text("4", style: TextStyle(fontSize: 20),)
                //                       ),
                //                   DataCell(Text("CSC 310", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Algorithm and Complexity Analysis", style: TextStyle(fontSize: 20),)),
                //                    DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                //                 ]),
                //             DataRow(
                //                 color: MaterialStateProperty.all(Colors.white),
                //                 cells: [
                //                   DataCell(
                //                        Text("5", style: TextStyle(fontSize: 20),)
                //                       ),
                //                   DataCell(Text("CSE 311", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Special Topics in Software", style: TextStyle(fontSize: 20),)),
                //                    DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                //                 ]),
                //             DataRow(
                //                 // color: MaterialStateProperty.all(Colors.blueAccent),
                //                 cells: [
                //                   DataCell(
                //                        Text("6", style: TextStyle(fontSize: 20),)
                //                      ),
                //                   DataCell(Text("CSC 333", style: TextStyle(fontSize: 20),)),
                //                   DataCell(
                //                       Text(" Mathematical and Numerical Methods", style: TextStyle(fontSize: 20),)),
                //                        DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                //                 ]),
                //             DataRow(
                //                 color: MaterialStateProperty.all(Colors.white),
                //                 cells: [
                //                   DataCell(
                //                        Text("7", style: TextStyle(fontSize: 20),)
                //                     ),
                //                   DataCell(Text("FRE 310", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Language Acquisition", style: TextStyle(fontSize: 20),)),
                //                    DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("2", style: TextStyle(fontSize: 20),)),
                //                 ]),
                //             DataRow(
                //                 // color: MaterialStateProperty.all(Colors.blueAccent),
                //                 cells: [
                //                   DataCell(
                //                        Text("8", style: TextStyle(fontSize: 20),)
                //                      ),
                //                   DataCell(Text("EVS 314", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Business Idea", style: TextStyle(fontSize: 20),)),
                //                    DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                //                   DataCell(Text("2", style: TextStyle(fontSize: 20),)),
                //                 ])
                //           ]),
                //           SizedBox(
                //             height: 10.0,
                //           ),
                //           Container(
                //             color: Colors.white,
                //             padding: EdgeInsets.all(10),
                //             margin: EdgeInsets.fromLTRB(100, 0, 0, 20),
                //             child: Text(
                //               "Total Units: 21", style: TextStyle(fontSize: 20)
                //             ),
                //           )
                //     ],
                //   ),
                      
                // ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}