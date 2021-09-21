import 'package:flutter/material.dart';

import 'dashboard.dart';
class Course_registration extends StatefulWidget {
  const Course_registration({ Key? key }) : super(key: key);

  @override
  _Course_registrationState createState() => _Course_registrationState();
  // int _counter =0;
}

class _Course_registrationState extends State<Course_registration> {
   bool _value = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  bool _value6 = false;
  bool _value7 = false;
  bool _value8 = false;
  int _counter =0;
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
        child: ListView(
          scrollDirection: Axis.vertical,
          
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Text("Course Registration",
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20.0,
                        )),
                  ),
                ),
                Container(
                  width: 1400.0,
                  child: DataTableDemo(),
                ),

                // SizedBox(
                //   height: 20.0,
                // ),
                // Container(
                //   margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                //   child: Container(
                //     child: SingleChildScrollView(
                //       scrollDirection: Axis.horizontal,
                //       child: 
                //       Table(
                        
                //         columnWidths: {
                //                  0: FixedColumnWidth(100.0),// fixed to 100 width
                //                  1: FixedColumnWidth(150.0),
                //                   2:FixedColumnWidth(250.0),//fixed to 100 width
                //                   3: FixedColumnWidth(100.0), 
                //         },
                        
                        
                //         defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                //         // defaultColumnWidth: FixedColumnWidth(200.0),  
                //           border: TableBorder.all(  
                //               color: Colors.black,  
                //               style: BorderStyle.solid,  
                //               width: 1),  
                //           children: [
                //             TableRow( children: [  
                //               Column(
                //                 children:[
                //                 Container(
                //                   padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                //                   child: Text('Select', style: TextStyle(fontSize: 20.0, )))
                //                 ]),  
                //               Column(children:[Text('Course Code', style: TextStyle(fontSize: 20.0))]),  
                //               Column(children:[Text('Course Name', style: TextStyle(fontSize: 20.0))]),
                //               Column(children:[Text('Units', style: TextStyle(fontSize: 20.0))]),    
                //             ]),  
                //             TableRow( children: [  
                //               Column(children:[
                //                 Container(
                //                    padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                //                   child: Checkbox(
                //                             activeColor: Colors.amber,
                //                             value: this._value,
                //                             onChanged: (value) {
                //                               int _counter=0;
                //                               setState(() {
                                                
                //                                 this._value = value!;
                //                                 _counter++;
                //                               });
                //                             }),
                //                 )
                //                 ]),  
                //               Column(children:[Text('CSC 301')]),  
                //               Column(children:[Text('Structured Programming')]), 
                //               Column(children:[Text('3')]), 
                //             ]),  
                //             TableRow( children: [  
                //               Column(children:[
                //                 Container(
                //                    padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                //                   child: Checkbox(
                //                             activeColor: Colors.amber,
                //                             value: this._value8,
                //                             onChanged: (value) {
                //                               setState(() {
                //                                 this._value8 = value!;
                //                               });
                //                             }),
                //                 )
                //                 ]),  
                //               Column(children:[Text('CSC 303')]),  
                //               Column(children:[Text('Data Management')]),  
                //               Column(children:[Text('3')]), 
                //             ]),  
                //             TableRow( children: [  
                //               Column(children:[
                //                 Container(
                //                    padding: EdgeInsets.fromLTRB(0, 7, 0,7),
                //                   child: Checkbox(
                //                             activeColor: Colors.amber,
                //                             value: this._value2,
                //                             onChanged: (value) {
                //                               setState(() {
                //                                 this._value2 = value!;
                //                               });
                //                             }),
                //                 )
                //                 ]),  
                //               Column(children:[Text('CSC 305')]),  
                //               Column(children:[Text('Operating System')]),
                //               Column(children:[Text('2')]),   
                //             ]),  
                //              TableRow( children: [  
                //               Column(children:[
                //                 Container(
                //                    padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                //                   child: Checkbox(
                //                             activeColor: Colors.amber,
                //                             value: this._value3,
                //                             onChanged: (value) {
                //                               setState(() {
                //                                 this._value3 = value!;
                //                               });
                //                             }),
                //                 )
                //                 ]),  
                //               Column(children:[Text('CSC 310')]),  
                //               Column(children:[Text('Algorithm and Complexity Ananlysis')]), 
                //               Column(children:[Text('2')]), 
                //             ]),  
                //             TableRow( children: [  
                //               Column(children:[
                //                 Container(
                //                    padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                //                   child: Checkbox(
                //                             activeColor: Colors.amber,
                //                             value: this._value4,
                //                             onChanged: (value) {
                //                               setState(() {
                //                                 this._value4 = value!;
                //                               });
                //                             }),
                //                 )
                //                 ]),  
                //               Column(children:[Text('CSC 333')]),  
                //               Column(children:[Text('Mathematical and Numerical Analysis')]),  
                //               Column(children:[Text('3')]), 
                //             ]),  
                //             TableRow( children: [  
                //               Column(children:[
                //                 Container(
                //                    padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                //                   child: Checkbox(
                //                             activeColor: Colors.amber,
                //                             value: this._value5,
                //                             onChanged: (value) {
                //                               setState(() {
                //                                 this._value5 = value!;
                //                               });
                //                             }),
                //                 )
                //                 ]),  
                //               Column(children:[Text('CSE 311')]),  
                //               Column(children:[Text('Special Topics in Software')]),
                //               Column(children:[Text('2')]),   
                //             ]),
                //              TableRow( children: [  
                //               Column(children:[
                //                 Container(
                //                    padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                //                   child: Checkbox(
                //                             activeColor: Colors.amber,
                //                             value: this._value6,
                //                             onChanged: (value) {
                //                               setState(() {
                //                                 this._value6 = value!;
                //                               });
                //                             }),
                //                 )
                //                 ]),  
                //               Column(children:[Text('FRE 301')]),  
                //               Column(children:[Text('Language Acquisition')]),  
                //               Column(children:[Text('2')]), 
                //             ]),  
                //             TableRow( children: [  
                //               Column(children:[
                //                 Container(
                //                    padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                //                   child: Checkbox(
                //                             activeColor: Colors.amber,
                //                             value: this._value7,
                //                             onChanged: (value) {
                //                               setState(() {
                //                                 this._value7 = value!;
                //                               });
                //                             }),
                //                 )
                //                 ]),  
                //               Column(children:[Text('EVS 310')]),  
                //               Column(children:[Text('Enterpreneurship')]),
                //               Column(children:[Text('2')]),   
                //             ]),  
                              
                //           ],
                          
                //       ),
                //     ),
                //   ),
                  
               // ),
                SizedBox(
                  height: 10,
                ),
               
                SizedBox(
                  height: 20.0,
                ),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 class User {
  String courseCode;
  String courseName;
  String unitNo;
  // String thirdname;

  User({required this.courseCode, required this.courseName, required this.unitNo,});

  static List<User> getUsers() {
    return <User>[
      User(courseCode: "CSC 301", courseName: "Structured Programming", unitNo: "3",),
      User(courseCode: "CSC 305", courseName: "Operating System", unitNo: "2",),
      User(courseCode: "CSC 310", courseName: "Algorithm and Complexity", unitNo: "2",),
       User(courseCode: "CSC 333", courseName: "Mathematical and Numerical Analysis", unitNo: "3",),
       User(courseCode: "CSC 315", courseName: "System Analysis and Design", unitNo: "3",),
       User(courseCode: "CSC 320", courseName: "Data Management", unitNo: "3",),
      User(courseCode: "CSE 311", courseName: "Special Topics in Software", unitNo: "3",),
       User(courseCode: "EVS 310", courseName: "Entrepreneurship", unitNo: "0",),
      User(courseCode: "FRE 301", courseName: "language Acquisition", unitNo: "0",),
    ];
  }
}
class DataTableDemo extends StatefulWidget {
  const DataTableDemo({ Key? key }) : super(key: key);

  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
 late List<User> users;
  late List<User> selectedUsers;
  late bool sort;

  @override
  void initState() {
    sort = false;
    selectedUsers = [];
    users = User.getUsers();
    super.initState();
  }
  onSortColum(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        users.sort((a, b) => a.courseCode.compareTo(b.courseCode));
      } else {
        users.sort((a, b) => b.courseCode.compareTo(a.courseCode));
      }
    }
  }

  onSelectedRow(bool selected, User user) async {
    setState(() {
      if (selected) {
        selectedUsers.add(user);
      } else {
        selectedUsers.remove(user);
      }
    });
  }
  // totalUnit(bool selected, User unitNo) {
  //   setState(() {
  //         unitNo = unitNo + 1;
  //   });
  // }
  SingleChildScrollView dataBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: 600,
        margin: EdgeInsets.all(20),
        child: DataTable(
          dataRowHeight: 50.0,
          columnSpacing: 30.0,
          sortAscending: sort,
          sortColumnIndex: 0,
          columns: [
            DataColumn(
                label: Text("COURSE CODE"),
                numeric: false,
                // tooltip: "This is First Name",
                // onSort: (columnIndex, ascending) {
                //   setState(() {
                //     sort = !sort;
                //   });
                //   onSortColum(columnIndex, ascending);
                // }
                ),
            DataColumn(
              label: Text("COURSE NAME"),
              numeric: false,
              // tooltip: "This is Last Name",
            ),
             DataColumn(
              label: Text("UNIT"),
              numeric: false,
              // tooltip: "This is Last Name2",
            ),
            //  DataColumn(
            //   label: Text("LAST NAME3"),
            //   numeric: false,
            //   tooltip: "This is Last Name3",
            // ),
          ],
          rows: users
              .map(
                (user) => DataRow(
                  color: MaterialStateProperty.all(Color.fromRGBO(228, 242, 243, 1)),
                selected: selectedUsers.contains(user),
                onSelectChanged: (b) {
                  print("Onselect");
                  onSelectedRow(b!, user);
                },
                cells: [
                  DataCell(
                    Text(user.courseCode),
                    onTap: () {
                      // print('Selected ${user.firstName}');
                    },
                  ),
                  DataCell(
                    Text(user.courseName),
                  ),
                  DataCell(
                    Text(user.unitNo),
                  ),
                  // DataCell(
                  //   Text(user.thirdname),
                  // ),
                ]),
          )
              .toList(),
        ),
      ),
    );
  }
  Widget build(BuildContext context) {
    return Column(
      children:[
        dataBody(),
              SizedBox(
                height: 30.0,
              ),
             Container(
                  margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
                    width: 500,
                    height: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 3.0),
                      color: Colors.yellow
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(50, 20, 0, 20),
                            child: Text("Preview Selected Courses", style: TextStyle(fontSize: 20),),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text("You Have Selected ${selectedUsers.length} Courses", style: TextStyle(color: Colors.green,
                            fontSize: 20
                            ),),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
                            child: Table(
                               defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          defaultColumnWidth: FixedColumnWidth(140.0),  
                            border: TableBorder.all(  
                                color: Colors.black,  
                                style: BorderStyle.solid,  
                                width: 1),  
                              children: [
                                TableRow(
                                  children: [
                                    Column(
                                  children:[
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                                    child: Text('Course', style: TextStyle(fontSize: 20.0, )))
                                  ]),  
                                Column(children:[Text('Unit', style: TextStyle(fontSize: 20.0))]),  
                                // Column(children:[Text('Course Name', style: TextStyle(fontSize: 20.0))]),
                                // Column(children:[Text('Units', style: TextStyle(fontSize: 20.0))]),    
                                  ]
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(60, 0, 0, 10),
                            
                            child: Text("TOTAL UNIT:: ", style: TextStyle(fontSize: 25),),
                          ),
                            Container(
                                width: 200.0,
                                height: 40.0,
                                margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                          
                                      backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Register Courses",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        )),
                )
                        ],
                      ),
                    ),

                ),
          ] 
    );
  }
}