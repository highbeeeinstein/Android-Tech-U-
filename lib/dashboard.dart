import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
   String matric_num = "";
  String fname = "";
  String lname = "";
  String email = "";
  String level = "";
  String Programme = "";
  String mname = "";
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
      drawer: myDrawer(),
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
                Text("Account Dashboard"),
                Text(
                  matric_num, 
                style: TextStyle(color: Colors.red, fontSize: 20),),
                SizedBox(
                  height: 10,
                ),
                Text("$lname $fname $mname", style: TextStyle(color: Colors.red, fontSize: 20),),
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
                          Text(level, style: TextStyle(fontSize:20)),
                          Text("Level", style: TextStyle(fontSize:20))
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
                            Text(Programme, style: TextStyle(fontSize:20)),
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
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(7),
                  color: Colors.white,
                    child: Column(
                      children: [
                        Text(
                          "Current Registered Courses", style: TextStyle(color:Colors.red,
                          fontSize: 25.0
                          ),
                          
                        ),
                        Divider(
                          height: 10,
                          thickness: 1.0,
                          color: Colors.black,
                        )
                      ],
                    ),
                ),
                 SizedBox(
                  height: 10.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Container(
                        width: 1400,
                        child: DataTable(
                          // decoration: BoxDecoration(

                          // ),
                          
                            headingRowColor: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                            
                            // dataRowColor: MaterialStateProperty.all(Colors.blueGrey),
                            columns: [
                              DataColumn(label: Text("S/N", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold,),)),
                              DataColumn(label: Text("Course Code", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold,),)),
                              DataColumn(label: Text("Course Name", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold,),)),
                               DataColumn(label: Text("Session", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold,),)),
                                DataColumn(label: Text("Semester", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold,),)),
                                 DataColumn(label: Text("Level", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold,),)),
                              DataColumn(label: Text("Unit", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold,),)),
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
                                    DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                                  ]),
                              DataRow(
                                  color: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                                  cells: [
                                    DataCell(
                                         Text("2", style: TextStyle(fontSize: 20),)
                                       ),
                                    DataCell(Text("CSC 303", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Data Manangement", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                                  ]),
                              DataRow(
                                  color: MaterialStateProperty.all(Colors.white),
                                  cells: [
                                    DataCell(
                                         Text("3", style: TextStyle(fontSize: 20),)
                                        ),
                                    DataCell(Text("CSC 305", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Operating System", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("2", style: TextStyle(fontSize: 20),)),
                                  ]),
                              DataRow(
                                  color: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                                  cells: [
                                    DataCell(
                                         Text("4", style: TextStyle(fontSize: 20),)
                                        ),
                                    DataCell(Text("CSC 310", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Algorithm and Complexity Analysis", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                                  ]),
                                    DataRow(
                                  color: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                                  cells: [
                                    DataCell(
                                         Text("5", style: TextStyle(fontSize: 20),)
                                        ),
                                    DataCell(Text("CSC 310", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("System Analysis and Design", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                                  ]),
                              DataRow(
                                  color: MaterialStateProperty.all(Colors.white),
                                  cells: [
                                    DataCell(
                                         Text("6", style: TextStyle(fontSize: 20),)
                                        ),
                                    DataCell(Text("CSE 311", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Special Topics in Software", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                                  ]),
                              DataRow(
                                  color: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                                  cells: [
                                    DataCell(
                                         Text("7", style: TextStyle(fontSize: 20),)
                                       ),
                                    DataCell(Text("CSC 333", style: TextStyle(fontSize: 20),)),
                                    DataCell(
                                        Text(" Mathematical and Numerical Methods", style: TextStyle(fontSize: 20),)),
                                         DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("3", style: TextStyle(fontSize: 20),)),
                                  ]),
                              DataRow(
                                  color: MaterialStateProperty.all(Colors.white),
                                  cells: [
                                    DataCell(
                                         Text("8", style: TextStyle(fontSize: 20),)
                                      ),
                                    DataCell(Text("FRE 310", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Language Acquisition", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("2", style: TextStyle(fontSize: 20),)),
                                  ]),
                              DataRow(
                                  color: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                                  cells: [
                                    DataCell(
                                         Text("9", style: TextStyle(fontSize: 20),)
                                       ),
                                    DataCell(Text("EVS 314", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Business Idea", style: TextStyle(fontSize: 20),)),
                                     DataCell(Text("2021", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("Second", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("300", style: TextStyle(fontSize: 20),)),
                                    DataCell(Text("2", style: TextStyle(fontSize: 20),)),
                                  ])
                            ]),
                      ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(280, 0, 0, 20),
                            child: Text(
                              "Total Units: 24", style: TextStyle(fontSize: 20)
                            ),
                          )
                    ],
                  ),
                      
                ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}
class myDrawer extends StatefulWidget {
  const myDrawer({ Key? key }) : super(key: key);

  @override
  _myDrawerState createState() => _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {
     String matric_num = "";
  String fname = "";
  String lname = "";
  String email = "";
  String level = "";
  String Programme = "";
  String mname = "";
  String image = "";
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
       image = '${prefs.getString('image')}';
    });
  }

  @override
  void initState() {
    super.initState();
    initSharedPreference();
  }
  @override
  Widget build(BuildContext context) {
   return Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
                color: Colors.red,
          ),
          accountName: Text("$lname $fname $mname"),
          accountEmail: Text(email),
          currentAccountPicture: CircleAvatar(
            
            backgroundImage: NetworkImage(image),
            
          ),
        ),
        ListTile(
          title: Text('Dashboard'),
          leading: Icon(FontAwesomeIcons.tachometerAlt),
          hoverColor: Colors.red,
          focusColor: Colors.blue,
          onTap: () {
            Navigator.pushNamed(context, '/dash');
          },
        ),
        ListTile(
          title: Text("Student profile"),
          leading: Icon(Icons.account_circle),
           hoverColor: Colors.red,
          onTap: () {
            Navigator.pushNamed(context, '/profile');
          },
        ),
        Divider(
          height: 0.2,
        ),
        ListTile(
          title: Text("Course Registration"),
          leading: Icon(FontAwesomeIcons.book),
           hoverColor: Colors.red,
          onTap: () {
            Navigator.pushNamed(context, '/register');
          },
        ),
         ListTile(
              title: Text("My Email Address"),
              leading: Icon(FontAwesomeIcons.envelope),
               hoverColor: Colors.red,
              onTap: () {
              Navigator.pushNamed(context, '/email');
          },
            ),
        ListTile(
              title: Text("Course History"),
              leading: Icon(FontAwesomeIcons.book),
               hoverColor: Colors.red,
              onTap: () {
              Navigator.pushNamed(context, '/history');
          },
            ),
            
        ListTile(
          title: Text("Lecturer Assessment"),
          leading: Icon(Icons.lock_clock_rounded),
           hoverColor: Colors.red,
          onTap: () {
            Navigator.pushNamed(context, '/assess');
          },
        ),
        ListTile(
          title: Text("Bed Space"),
          leading: Icon(FontAwesomeIcons.bed),
           hoverColor: Colors.red,
          onTap: () {
            Navigator.pushNamed(context, '/bed');
          },
        ),
        ListTile(
          title: Text("Tech-U E-libarary"),
          leading: Icon(FontAwesomeIcons.book),
           hoverColor: Colors.red,
          onTap: () {
            Navigator.pushNamed(context, '/libarary');
          },
        ),
        ListTile(
          title: Text("Internet Access"),
          leading: Icon(Icons.wifi),
           hoverColor: Colors.red,
          onTap: () {
            Navigator.pushNamed(context, '/internet');
          },
        ),
        // ListTile(
        //   title: Text("Assessment"),
        //   leading: Icon(Icons.lock_clock_rounded),
        //   onTap: () {
        //     Navigator.pushNamed(context, '/login');
        //   },
        // ),
        ListTile(
          title: Text("Result"),
          leading: Icon(FontAwesomeIcons.chartBar),
           hoverColor: Colors.red,
          onTap: () {
            Navigator.pushNamed(context, '/result');
          },
        ),
        ExpansionTile(
          title: Text("Other Pages"),
          leading: Icon(FontAwesomeIcons.dropbox),
          children: [
            
            ListTile(
              title: Text("Courseware"),
              leading: Icon(FontAwesomeIcons.book),
               hoverColor: Colors.red,
              onTap: () {
              // Navigator.pushNamed(context, '/');
              launch("https://courseware.tech-u.edu.ng/");
          },
            ),
            ListTile(
              title: Text("E-Exam"),
              leading: Icon(FontAwesomeIcons.edit),
               hoverColor: Colors.red,
              onTap: () {
              // Navigator.pushNamed(context, '/');
              launch("https://tees.tech-u.edu.ng/#/auth/login");
          },
            ),
            ListTile(
              title: Text("E-libarary"),
              leading: Icon(FontAwesomeIcons.briefcase),
               hoverColor: Colors.red,
              onTap: () {
              // Navigator.pushNamed(context, '/');

          },
            ),
            ListTile(
              title: Text("E-Learning"),
              leading: Icon(FontAwesomeIcons.briefcase),
               hoverColor: Colors.red,
              onTap: () {
              // Navigator.pushNamed(context, '/');
          },
            )
          ],
          
          ),
          ExpansionTile(
          title: Text("Downloads"),
          
          leading: Icon(FontAwesomeIcons.dropbox),
          children: [
            
            ListTile(
              title: Text("Lecture TimeTable"),
              leading: Icon(FontAwesomeIcons.table),
               hoverColor: Colors.red,
              onTap: () {
              // Navigator.pushNamed(context, '/');
              launch("https://www.tech-u.edu.ng/documents/2020-2021-SECOND-SEMESTER-LECTURE-TIME-TABLE.pdf");
          },
            ),
            ListTile(
              title: Text("E-Exam Guide"),
              leading: Icon(FontAwesomeIcons.table),
               hoverColor: Colors.red,
              onTap: () {
              // Navigator.pushNamed(context, '/');
              launch("https://www.tech-u.edu.ng/documents/TECH-U-STUDENTS-GUIDELINES-FOR-E-EXAMINATION.pdf");
          },
            ),
            ListTile(
              title: Text("Academic Calendar"),
              leading: Icon(FontAwesomeIcons.table),
               hoverColor: Colors.red,
              onTap: () {
                 launch("https://www.tech-u.edu.ng/documents/Academic-Calendar-2020-2021-Session.pdf");
              // Navigator.pushNamed(context, '/');
              
          },
            ),
            ListTile(
              title: Text("Fee Structure"),
              leading: Icon(FontAwesomeIcons.table),
               hoverColor: Colors.red,
              onTap: () {
              // Navigator.pushNamed(context, '/');
              launch(" https://www.tech-u.edu.ng/documents/school-fees-structure.pdf");
             
          },
            )
          ],
          
          ),
        
        ListTile(
          title: Text("Log Out"),
          leading: Icon(FontAwesomeIcons.signOutAlt),
           hoverColor: Colors.red,
          onTap: () {
             Navigator.pushReplacementNamed(context, '/login');
          },
        ),
      ],
    ),
  );
  }
}
// Widget myDrawer(BuildContext context) {
  

//   return Drawer(
//     child: ListView(
//       children: [
//         UserAccountsDrawerHeader(
//           decoration: BoxDecoration(
//                 color: Colors.red,
//           ),
//           accountName: Text("Wahab Ibraheem Iyanda"),
//           accountEmail: Text("wahabibraheemiyanda@gmail.com"),
//           currentAccountPicture: CircleAvatar(
            
//             backgroundImage: AssetImage('assets/img_avatar2.png'),
            
//           ),
//         ),
//         ListTile(
//           title: Text('Dashboard'),
//           leading: Icon(FontAwesomeIcons.tachometerAlt),
//           hoverColor: Colors.red,
//           focusColor: Colors.blue,
//           onTap: () {
//             Navigator.pushNamed(context, '/dash');
//           },
//         ),
//         ListTile(
//           title: Text("Student profile"),
//           leading: Icon(Icons.account_circle),
//            hoverColor: Colors.red,
//           onTap: () {
//             Navigator.pushNamed(context, '/profile');
//           },
//         ),
//         Divider(
//           height: 0.2,
//         ),
//         ListTile(
//           title: Text("Course Registration"),
//           leading: Icon(FontAwesomeIcons.book),
//            hoverColor: Colors.red,
//           onTap: () {
//             Navigator.pushNamed(context, '/register');
//           },
//         ),
//          ListTile(
//               title: Text("My Email Address"),
//               leading: Icon(FontAwesomeIcons.envelope),
//                hoverColor: Colors.red,
//               onTap: () {
//               Navigator.pushNamed(context, '/email');
//           },
//             ),
//         ListTile(
//               title: Text("Course History"),
//               leading: Icon(FontAwesomeIcons.book),
//                hoverColor: Colors.red,
//               onTap: () {
//               Navigator.pushNamed(context, '/history');
//           },
//             ),
            
//         ListTile(
//           title: Text("Lecturer Assessment"),
//           leading: Icon(Icons.lock_clock_rounded),
//            hoverColor: Colors.red,
//           onTap: () {
//             Navigator.pushNamed(context, '/assess');
//           },
//         ),
//         ListTile(
//           title: Text("Bed Space"),
//           leading: Icon(FontAwesomeIcons.bed),
//            hoverColor: Colors.red,
//           onTap: () {
//             Navigator.pushNamed(context, '/bed');
//           },
//         ),
//         ListTile(
//           title: Text("Tech-U E-libarary"),
//           leading: Icon(FontAwesomeIcons.book),
//            hoverColor: Colors.red,
//           onTap: () {
//             Navigator.pushNamed(context, '/libarary');
//           },
//         ),
//         ListTile(
//           title: Text("Internet Access"),
//           leading: Icon(Icons.wifi),
//            hoverColor: Colors.red,
//           onTap: () {
//             Navigator.pushNamed(context, '/internet');
//           },
//         ),
//         // ListTile(
//         //   title: Text("Assessment"),
//         //   leading: Icon(Icons.lock_clock_rounded),
//         //   onTap: () {
//         //     Navigator.pushNamed(context, '/login');
//         //   },
//         // ),
//         ListTile(
//           title: Text("Result"),
//           leading: Icon(FontAwesomeIcons.chartBar),
//            hoverColor: Colors.red,
//           onTap: () {
//             Navigator.pushNamed(context, '/result');
//           },
//         ),
//         ExpansionTile(
//           title: Text("Other Pages"),
//           leading: Icon(FontAwesomeIcons.dropbox),
//           children: [
            
//             ListTile(
//               title: Text("Courseware"),
//               leading: Icon(FontAwesomeIcons.book),
//                hoverColor: Colors.red,
//               onTap: () {
//               // Navigator.pushNamed(context, '/');
//               launch("https://courseware.tech-u.edu.ng/");
//           },
//             ),
//             ListTile(
//               title: Text("E-Exam"),
//               leading: Icon(FontAwesomeIcons.edit),
//                hoverColor: Colors.red,
//               onTap: () {
//               // Navigator.pushNamed(context, '/');
//               launch("https://tees.tech-u.edu.ng/#/auth/login");
//           },
//             ),
//             ListTile(
//               title: Text("E-libarary"),
//               leading: Icon(FontAwesomeIcons.briefcase),
//                hoverColor: Colors.red,
//               onTap: () {
//               // Navigator.pushNamed(context, '/');

//           },
//             ),
//             ListTile(
//               title: Text("E-Learning"),
//               leading: Icon(FontAwesomeIcons.briefcase),
//                hoverColor: Colors.red,
//               onTap: () {
//               // Navigator.pushNamed(context, '/');
//           },
//             )
//           ],
          
//           ),
//           ExpansionTile(
//           title: Text("Downloads"),
          
//           leading: Icon(FontAwesomeIcons.dropbox),
//           children: [
            
//             ListTile(
//               title: Text("Lecture TimeTable"),
//               leading: Icon(FontAwesomeIcons.table),
//                hoverColor: Colors.red,
//               onTap: () {
//               // Navigator.pushNamed(context, '/');
//               launch("https://www.tech-u.edu.ng/documents/2020-2021-SECOND-SEMESTER-LECTURE-TIME-TABLE.pdf");
//           },
//             ),
//             ListTile(
//               title: Text("E-Exam Guide"),
//               leading: Icon(FontAwesomeIcons.table),
//                hoverColor: Colors.red,
//               onTap: () {
//               // Navigator.pushNamed(context, '/');
//               launch("https://www.tech-u.edu.ng/documents/TECH-U-STUDENTS-GUIDELINES-FOR-E-EXAMINATION.pdf");
//           },
//             ),
//             ListTile(
//               title: Text("Academic Calendar"),
//               leading: Icon(FontAwesomeIcons.table),
//                hoverColor: Colors.red,
//               onTap: () {
//                  launch("https://www.tech-u.edu.ng/documents/Academic-Calendar-2020-2021-Session.pdf");
//               // Navigator.pushNamed(context, '/');
              
//           },
//             ),
//             ListTile(
//               title: Text("Fee Structure"),
//               leading: Icon(FontAwesomeIcons.table),
//                hoverColor: Colors.red,
//               onTap: () {
//               // Navigator.pushNamed(context, '/');
//               launch(" https://www.tech-u.edu.ng/documents/school-fees-structure.pdf");
             
//           },
//             )
//           ],
          
//           ),
        
//         ListTile(
//           title: Text("Log Out"),
//           leading: Icon(FontAwesomeIcons.signOutAlt),
//            hoverColor: Colors.red,
//           onTap: () {
//             Navigator.pushNamed(context, '/login');
//           },
//         ),
//       ],
//     ),
//   );
// }
class Alaye extends StatefulWidget {
  const Alaye({Key? key}) : super(key: key);

  @override
  _AlayeState createState() => _AlayeState();
}

class _AlayeState extends State<Alaye> {
  Choice _selectedOption = choices[0];
  void _select(Choice choice) {
    setState(() {
      _selectedOption = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (context) {
        return [
          PopupMenuItem(child: Text('My Profile'), value: "menu1"),
          // PopupMenuItem(child: Text('Setting'), value: "menu2"),
          PopupMenuItem(child: Text('Log Out'), value: "menu3"),
        ];
      },
      onSelected: (value) {
        switch (value) {
          case "menu1":
            Navigator.pushNamed(context, '/profile');
            break;
          // case "menu2":
          //   Navigator.pushNamed(context, '/dash');
          //   break;
          case "menu3":
            Navigator.pushReplacementNamed(context, '/login');
            break;
          default:
        }
      },
    );
   
  }
}
class Choice {
  const Choice({
    required this.name,
    required this.icon,
    /*required this.onclicked*/
  });
  final String name;
  final IconData icon;
  // final VoidCallback onclicked;
}
List<Choice> choices = <Choice>[
  Choice(
    name: 'My Profile',
    icon: Icons.wifi,
  ),
  Choice(
    name: 'Log out',
    icon: Icons.bluetooth,
    
  ),

  
];

