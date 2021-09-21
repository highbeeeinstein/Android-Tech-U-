import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class View_history extends StatefulWidget {
  const View_history({ Key? key }) : super(key: key);

  @override
  _View_historyState createState() => _View_historyState();
}

class _View_historyState extends State<View_history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("STUDENT \n REGISTRATION \n FORM", style: TextStyle(fontSize: 15),),
                          Container(
                            padding: EdgeInsets.all(6),
                            margin:EdgeInsets.all(10),
                            width: 100.0,
                            height: 50.0,
                            color: Colors.red,
                            child: Row(
                              children: [
                                Icon(FontAwesomeIcons.print, color: Colors.white,),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  // child: Text("Print", style: TextStyle(color:Colors.white, fontSize: 19)))
                                  child: TextButton(
                                    onPressed:(){}, 
                                    child: Text("Print", style: TextStyle(color:Colors.white, fontSize: 19)))
                                    ),
                                  
                              ],
                            ),
                          ),
                          Container(
                             padding: EdgeInsets.all(10),
                            margin:EdgeInsets.all(10),
                            width: 100.0,
                            height: 50.0,
                            color: Colors.red,
                            child: Row(
                              children: [
                                Icon(Icons.clear, color: Colors.white,),
                                // Text("Close", style: TextStyle(color:Colors.white,fontSize: 19))
                                TextButton(
                                  onPressed: (){
                                        Navigator.pushNamed(context, '/dash');
                                  }, 
                                  child: Text("Close", style: TextStyle(color:Colors.white,fontSize: 19))
                                  )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: 300.0,
                    height: 1350.0,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(40, 10, 0, 10),
                            width: 300,
                            height: 250,
                            child: Image(
                              image: AssetImage('assets/logo_login.png')
                              ),
                          ),
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text("FIRST TECHNICAL UNIVERSITY, IBADAN", style: TextStyle(fontSize: 20),),
                          ),
                        ),
                         Center(
                           child: Container(
                             padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text("KM 15, Ibadan-Lagos Expressway, Ibadan, Nigeria"),
                        ),
                         ),
                         Center(
                           child: Container(
                             padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text("STUDENT RESULT INFORMATION SYSTEM"),
                        ),
                         ),
                        SizedBox(
                            height: 20,
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text("COURSE REGISTRATION FORM", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                        ),
                        SizedBox(
                            height: 10,
                        ),
                        Container(
                           padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text("Matric No: "),
                        ),
                        Container(
                           padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text("Student Name "),
                        ),
                        Container(
                           padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text("Level: "),
                        ),
                        Container(
                           padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text("Semester: "),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Container(
                           padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text("Session"),
                        ),
                        Container(
                           padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text("Programme: "),
                        ),
                        Container(
                           padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text("Department: "),
                        ),
                        Container(
                           padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text("Faculty: "),
                        ),
                         Divider(
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                         SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Container(
                        width: 1400,
                        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                        child: DataTable(
                          // decoration: BoxDecoration(

                          // ),
                          
                            headingRowColor: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                            // dataRowColor: MaterialStateProperty.all(Colors.blueGrey),
                            columns: [
                           DataColumn(label: Text("S/N", style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold,))),
                            DataColumn(label: Text("COURSE CODE", style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,),)),
                              DataColumn(label: Text("COURSE TITLE", style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,),)),
                               DataColumn(label: Text("UNIT", style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,),)),
                              //   DataColumn(label: Text("SCORE", style: TextStyle(fontSize: 20),)),
                              //    DataColumn(label: Text("GRADE", style: TextStyle(fontSize: 20),)),
                              // DataColumn(label: Text("COMMENT", style: TextStyle(fontSize: 20),)),
                              // DataColumn(label: Text("Select")),
                            ],
                            rows: [
                              DataRow(
                                  color: MaterialStateProperty.all(Colors.white),
                                  cells: [
                                    DataCell(
                                         Text("1", style: TextStyle(fontSize: 20),)
                                        
                                            ),
                                    DataCell(Text("CSC 301", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Structured Programming", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("84", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
                                  ]),
                              DataRow(
                                    color: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                                  cells: [
                                    DataCell(
                                         Text("2", style: TextStyle(fontSize: 20),)
                                       ),
                                    DataCell(Text("CSC 303", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Data Manangement", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("2", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("80", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
                                  ]),

                              DataRow(
                                  color: MaterialStateProperty.all(Colors.white),
                                  cells: [
                                    DataCell(
                                         Text("2", style: TextStyle(fontSize: 20),)
                                        ),
                                    DataCell(Text("CSC 305", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Operating System", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("2", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("78", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
                                  ]),
                              DataRow(
                                  color: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                                  cells: [
                                    DataCell(
                                         Text("4", style: TextStyle(fontSize: 20),)
                                        ),
                                    DataCell(Text("CSC 310", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Algorithm and Complexity Analysis", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("2", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("92", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
                                  ]),
                              DataRow(
                                  color: MaterialStateProperty.all(Colors.white),
                                  cells: [
                                    DataCell(
                                         Text("5", style: TextStyle(fontSize: 20),)
                                        ),
                                    DataCell(Text("CSE 311", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Special Topics in Software", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("2", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("83", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
                                  ]),
                              DataRow(
                                  color: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                                  cells: [
                                    DataCell(
                                         Text("6", style: TextStyle(fontSize: 20),)
                                       ),
                                    DataCell(Text("CSC 333", style: TextStyle(fontSize: 20),)),
                                    DataCell(
                                        Text(" Mathematical and Numerical Methods", style: TextStyle(fontSize: 20),)),
                                         DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("82", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
                                  ]),
                                 DataRow(
                                  color: MaterialStateProperty.all(Colors.white),
                                  cells: [
                                    DataCell(
                                         Text("7", style: TextStyle(fontSize: 20),)
                                       ),
                                    DataCell(Text("CSC 312", style: TextStyle(fontSize: 20),)),
                                    DataCell(
                                        Text("System Analysis and Design ", style: TextStyle(fontSize: 20),)),
                                         DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("90", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
                                  ]),  
                              DataRow(
                                
                                    color: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                                  cells: [
                                    DataCell(
                                         Text("8", style: TextStyle(fontSize: 20),)
                                      ),
                                    DataCell(Text("FRE 310", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Language Acquisition", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("0", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("72", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
                                  ]),
                              DataRow(
                                color: MaterialStateProperty.all(Colors.white),
                                  cells: [
                                    DataCell(
                                         Text("9", style: TextStyle(fontSize: 20),)
                                       ),
                                    DataCell(Text("EVS 314", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Business Idea", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("0", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("50", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("C", style: TextStyle(fontSize: 20),)),
                                    // DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
                                  ])
                            ]),
                      ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                             width: 600.0,
                             height: 90,
                            color: Color.fromRGBO(228, 242, 243, 1),
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            padding: EdgeInsets.fromLTRB(400, 10, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  "TOTAL \n UNITS: ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Text("17", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          // Container(
                          //    width: 500.0,
                          //    height: 50,
                          //   color: Color.fromRGBO(228, 242, 243, 1),
                          //   margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          //   padding: EdgeInsets.fromLTRB(200, 10, 0, 0),
                          //   child: Text(
                          //     "CGPA: ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                          //   ),
                          // ),
                    ],
                  ),
                      
                ),
                      ],
                    ),
                  )
                ],
              ),
        ),
    );
  }
}