import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
class View_result extends StatefulWidget {
  const View_result({ Key? key }) : super(key: key);

  @override
  _View_resultState createState() => _View_resultState();
}

class _View_resultState extends State<View_result> {
    String matric_num = "";
  String fname = "";
  String lname = "";
  String email = "";
  String level = "";
  String Programme = "";
  String mname = "";
  String Faculty = "";
  String Department = "";
  void initSharedPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      matric_num = '${prefs.getString('matric_no')}';
      fname = '${prefs.getString('fname')}';
      lname = '${prefs.getString('lname')}';
      email = '${prefs.getString('email')}';
       level = '${prefs.getString('level')}';
      Programme = '${prefs.getString('programme')}';
      mname = '${prefs.getString('mname')}';
       Faculty = '${prefs.getString('faculty')}';
        Department = '${prefs.getString('department')}';
    });
  }

  @override
  void initState() {
    super.initState();
    initSharedPreference();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
           height: double.infinity,
              width: double.infinity,
              color: Colors.grey,
              padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("STUDENT \n RESULT \n INFORMATION", style: TextStyle(fontSize: 15),),
                          Container(
                            padding: EdgeInsets.all(6),
                            margin:EdgeInsets.only(left: 13, right:10, top: 10),
                            width: 100.0,
                            height: 70.0,
                            color: Colors.red,
                            child: Row(
                              children: [
                                Icon(FontAwesomeIcons.print, color: Colors.white,),
                                Container(
                                  padding: EdgeInsets.all(0),
                                  // child: Text("Print", style: TextStyle(color:Colors.white, fontSize: 19)))
                                  child: TextButton(
                                    onPressed:(){}, 
                                    child: Text("Print", style: TextStyle(color:Colors.white, fontSize: 19)))
                                    ),
                                  
                              ],
                            ),
                          ),
                          Container(
                             padding: EdgeInsets.all(6),
                            margin:EdgeInsets.all(13),
                            width: 100.0,
                            height: 70.0,
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
                            padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: Text("STUDENT RESULT", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
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
                          child: Text("Matric No: $matric_num"),
                        ),
                        Container(
                           padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text("Student Name: $lname $fname $mname "),
                        ),
                        Container(
                           padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text("Level: $level "),
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
                          child: Text("Programme: $Programme"),
                        ),
                        Container(
                           padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text("Department: $Department"),
                        ),
                        Container(
                           padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                          child: Text("Faculty: $Faculty "),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 1400,
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: DataTable(
                          // decoration: BoxDecoration(

                          // ),
                          
                            headingRowColor: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                            // dataRowColor: MaterialStateProperty.all(Colors.blueGrey),
                            columns: [
                              DataColumn(label: Text("S/N", style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,),)),
                              DataColumn(label: Text("COURSE CODE", style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,),)),
                              DataColumn(label: Text("COURSE TITLE", style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,),)),
                               DataColumn(label: Text("COURSE UNIT", style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,),)),
                                DataColumn(label: Text("SCORE", style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,),)),
                                 DataColumn(label: Text("GRADE", style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,),)),
                              DataColumn(label: Text("COMMENT", style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,),)),
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
                                    DataCell(Text("84", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
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
                                    DataCell(Text("80", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
                                  ]),

                              DataRow(
                                  color: MaterialStateProperty.all(Colors.white),
                                  cells: [
                                    DataCell(
                                         Text("2", style: TextStyle(fontSize: 20),)
                                        ),
                                    DataCell(Text("CSC 305", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("operating System", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("2", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("78", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
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
                                    DataCell(Text("92", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
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
                                    DataCell(Text("83", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
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
                                    DataCell(Text("82", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
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
                                    DataCell(Text("90", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
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
                                    DataCell(Text("72", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("A", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
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
                                    DataCell(Text("50", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("C", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Pass", style: TextStyle(fontSize: 20),)),
                                  ])
                            ]),
                      ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                             width: 1300.0,
                             height: 50,
                            color: Color.fromRGBO(228, 242, 243, 1),
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            padding: EdgeInsets.fromLTRB(1010, 10, 0, 0),
                            child: Text(
                              "GPA: ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                             width: 1300.0,
                             height: 50,
                            color: Color.fromRGBO(228, 242, 243, 1),
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            padding: EdgeInsets.fromLTRB(1010, 10, 0, 0),
                            child: Text(
                              "CGPA: ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                            ),
                          ),
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