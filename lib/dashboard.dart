import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                Text("Account Dashboard"),
                Text("125/18/1/0043", style: TextStyle(color: Colors.red, fontSize: 20),),
                SizedBox(
                  height: 10,
                ),
                Text("WAHAB IBRAHEEM IYANDA", style: TextStyle(color: Colors.red, fontSize: 20),),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  width: 400.0,
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
                  width: 400.0,
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
                  width: 400.0,
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
                      DataTable(
                        // decoration: BoxDecoration(

                        // ),
                        
                          headingRowColor: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                          
                          // dataRowColor: MaterialStateProperty.all(Colors.blueGrey),
                          columns: [
                            DataColumn(label: Text("S/N", style: TextStyle(fontSize: 20),)),
                            DataColumn(label: Text("Course Code", style: TextStyle(fontSize: 20),)),
                            DataColumn(label: Text("Course Name", style: TextStyle(fontSize: 20),)),
                             DataColumn(label: Text("Session", style: TextStyle(fontSize: 20),)),
                              DataColumn(label: Text("Semester", style: TextStyle(fontSize: 20),)),
                               DataColumn(label: Text("Level", style: TextStyle(fontSize: 20),)),
                            DataColumn(label: Text("Unit", style: TextStyle(fontSize: 20),)),
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
                                  DataCell(Text("operating System", style: TextStyle(fontSize: 20),)),
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
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(100, 0, 0, 20),
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
Widget myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
                color: Colors.red,
          ),
          accountName: Text("Wahab Ibraheem Iyanda"),
          accountEmail: Text("wahabibraheemiyanda@gmail.com"),
          currentAccountPicture: CircleAvatar(
            
            backgroundImage: AssetImage('assets/img_avatar2.png'),
            
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
          onTap: () {
            Navigator.pushNamed(context, '/register');
          },
        ),
         ListTile(
              title: Text("My Email Address"),
              leading: Icon(FontAwesomeIcons.envelope),
              onTap: () {
              Navigator.pushNamed(context, '/email');
          },
            ),
        ListTile(
              title: Text("Course History"),
              leading: Icon(FontAwesomeIcons.book),
              onTap: () {
              Navigator.pushNamed(context, '/history');
          },
            ),
            
        ListTile(
          title: Text("Lecturer Assessment"),
          leading: Icon(Icons.lock_clock_rounded),
          onTap: () {
            Navigator.pushNamed(context, '/assess');
          },
        ),
        ListTile(
          title: Text("Bed Space"),
          leading: Icon(FontAwesomeIcons.bed),
          onTap: () {
            Navigator.pushNamed(context, '/bed');
          },
        ),
        ListTile(
          title: Text("Internet Access"),
          leading: Icon(Icons.wifi),
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
              onTap: () {
              Navigator.pushNamed(context, '/');
          },
            ),
            ListTile(
              title: Text("E-Exam"),
              leading: Icon(FontAwesomeIcons.edit),
              onTap: () {
              Navigator.pushNamed(context, '/');
          },
            ),
            ListTile(
              title: Text("E-libarary"),
              leading: Icon(FontAwesomeIcons.briefcase),
              onTap: () {
              Navigator.pushNamed(context, '/');
          },
            ),
            ListTile(
              title: Text("E-Learning"),
              leading: Icon(FontAwesomeIcons.briefcase),
              onTap: () {
              Navigator.pushNamed(context, '/');
          },
            )
          ],
          
          ),
        
        ListTile(
          title: Text("Log Out"),
          leading: Icon(FontAwesomeIcons.signOutAlt),
          onTap: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
      ],
    ),
  );
}
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
            Navigator.pushNamed(context, '/login');
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

