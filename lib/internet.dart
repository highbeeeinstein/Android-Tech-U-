import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dashboard.dart';
class Internet_access extends StatefulWidget {
  const Internet_access({ Key? key }) : super(key: key);

  @override
  _Internet_accessState createState() => _Internet_accessState();
}

class _Internet_accessState extends State<Internet_access> {
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
                Text("INTERNET ACCESS LOGIN DETAILS"),
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
                  height: 30,
                ),
                Container(
                  height: 220.0,
                  width: 400.0,
                  margin: EdgeInsets.all(5),
                  // padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(40, 60, 30, 10),
                          child: Text(
                            "Internet Access Login Details", style: TextStyle(color:Colors.black,
                            fontSize: 17.0, fontWeight: FontWeight.bold
                            ),
                          
                            
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(40, 10, 15, 10),
                          child: Row(
                            children: [
                              Icon(Icons.wifi,),
                              Text("Username:125/18/1/0043",
                                      style: TextStyle(fontSize: 19),
                              ),
                            ],
                          )),
                         Container(
                          padding: EdgeInsets.fromLTRB(60, 10, 15, 10),
                          child: Row(
                            children: [
                              Icon(Icons.wifi,),
                              Text("Password:IfmP29",
                                      style: TextStyle(fontSize: 19),
                              ),
                            ],
                          )),
                       
                      ],
                    ),
                ),
                 SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}