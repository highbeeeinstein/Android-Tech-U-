import 'dart:html';

import 'package:flutter/material.dart';

import 'dashboard.dart';
class Student_profile extends StatefulWidget {
  const Student_profile({ Key? key }) : super(key: key);

  @override
  _Student_profileState createState() => _Student_profileState();
}

class _Student_profileState extends State<Student_profile> {
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
        color: Colors.blueGrey,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("STUDENT PROFILE", style: TextStyle(color: Colors.red, fontSize: 25.0),),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 2400,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        height: 200,
                        width: 450,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                         
                        ),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/img_avatar2.png')
                              )
                          ),
                          // child: ClipOval(
                          //   //  radius: 50.0,
                            
                          //   child: Image(
                          //     height: 50.0,
                          //     width: 50.0,
                          //     image: AssetImage('assets/img_avatar2.png', ), 
                          //     fit: BoxFit.cover
                          //     ),
                          // ),
                        ),
                      ),
                       Container(
                   margin: EdgeInsets.all(10),
                   padding: EdgeInsets.all(10),
                  height: 500,
                  width: 450,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                         
                  ),
                  child: Column(
                    children: [
                      Text("Basic Info", style: TextStyle(color:Colors.black,fontSize: 20),),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Part:", style: TextStyle(fontSize: 20),),
                              Text("Part 3", style: TextStyle(color: Colors.red, fontSize: 20),),
                             
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                           Divider(
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                       Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Session:", style: TextStyle(fontSize: 20),),
                              Text("2020/2021", style: TextStyle(color: Colors.red, fontSize: 20),),
                             
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                           Divider(
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                        ],
                      ),
                       SizedBox(
                        height: 10,
                      ),
                       Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Gender:", style: TextStyle(fontSize: 20),),
                              Text("Male", style: TextStyle(color: Colors.red, fontSize: 20),),
                             
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                           Divider(
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                        ],
                      ),
                       SizedBox(
                        height: 10,
                      ),
                       Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Date of Birth:", style: TextStyle(fontSize: 20),),
                              Text("", style: TextStyle(color: Colors.red, fontSize: 20),),
                             
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                           Divider(
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                        ],
                      ),
                       SizedBox(
                        height: 10,
                      ),
                       Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Phone Number:", style: TextStyle(fontSize: 20),),
                              Text("", style: TextStyle(color: Colors.red, fontSize: 20),),
                             
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                           Divider(
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                        ],
                      ),
                        SizedBox(
                        height: 10,
                      ),
                       Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("LGA OF ORIGIN:", style: TextStyle(fontSize: 20),),
                              Text("", style: TextStyle(color: Colors.red, fontSize: 20),),
                             
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                           Divider(
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                        ],
                      ),
                       SizedBox(
                        height: 10,
                      ),
                       Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("State of Origin:", style: TextStyle(fontSize: 20),),
                              Text("OYO", style: TextStyle(color: Colors.red, fontSize: 20),),
                             
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                           Divider(
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                        ],
                      ),
                       SizedBox(
                        height: 10,
                      ),
                       Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Nationality:", style: TextStyle(fontSize: 20),),
                              Text("Nigerian", style: TextStyle(color: Colors.red, fontSize: 20),),
                             
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                           Divider(
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                 Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        height: 150,
                        width: 450,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                         
                        ),
                        child: Text(
                          "Address", style: TextStyle(fontSize: 25),
                        )
                      ),
                      SizedBox(
                        height: 10,
                      ),
                       Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        height: 70,
                        width: 450,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.red,
                         
                        ),
                        child: Container(
                          height: 30,
                          width: 100,
                          color: Colors.redAccent,
                          margin: EdgeInsets.fromLTRB(80, 2, 80, 2),
                          padding: EdgeInsets.all(10),
                          child: TextButton(
                            onPressed: (){
                                Navigator.pushNamed(context, '/update');
                            }, 
                            child: Text("Update Profile", style: TextStyle(color: Colors.white, fontSize: 20),)
                            ),
                        )
                      ),
                      SizedBox(
                          height: 10,
                      ),
                      Container(
                          margin: EdgeInsets.all(10),
                          height: 1200,
                          width: 400,
                          decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey, width: 2.0),
                                  color: Colors.white,
                            ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text("Matric No: 125/18/1/0043", style: TextStyle(color: Colors.red,
                                      fontSize: 20.0,
                                ),),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Title", style: TextStyle(fontSize: 17),),
                                    Text("FirstName", style: TextStyle(fontSize: 17),)
                                  ],
                                ),
                              ),
                               Container(
                                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Mr.", style: TextStyle(fontSize: 17),),
                                    Text("IBRAHEEM", style: TextStyle(fontSize: 17),)
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                               Container(
                                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("MiddleName", style: TextStyle(fontSize: 17),),
                                    Text("LastName", style: TextStyle(fontSize: 17),)
                                  ],
                                ),
                              ),
                               Container(
                                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("IYANDA", style: TextStyle(fontSize: 17),),
                                    Text("WAHAB", style: TextStyle(fontSize: 17),)
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 1.0,
                                indent: 20.0,
                                endIndent: 20.0,
                              ),
                               SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                child: Text("Education", style: TextStyle(color: Colors.black,
                                      fontSize: 30.0,
                                ),),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 1.0,
                                indent: 20.0,
                                endIndent: 20.0,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 300,
                                height: 370,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey, width: 1.0)
                                ),
                                child: Column(
                                  
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            child: Text("Email Address:", style: TextStyle(
                                              fontSize: 18,
                                            ),)),
                                          
                                          Container(
                                            padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                                            child: Text("wahabibraheem@tech-u.edu.ng", style: TextStyle(
                                              color: Colors.red
                                            ),)),
                                            Divider(
                                               color: Colors.grey,
                                               thickness: 1.0,
                                                indent: 2.0,
                                                endIndent: 2.0,
                                            )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            child: Text("Programme:", style: TextStyle(
                                              fontSize: 18,
                                            ),)),
                                          
                                          Container(
                                            padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                                            child: Text("Computer Science", style: TextStyle(
                                              color: Colors.red
                                            ),)),
                                            Divider(
                                               color: Colors.grey,
                                               thickness: 1.0,
                                                indent: 2.0,
                                                endIndent: 2.0,
                                            )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            child: Text("Department:", style: TextStyle(
                                              fontSize: 18,
                                            ),)),
                                          
                                          Container(
                                            padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                            child: Text("Mathematics and Computational Sciences", style: TextStyle(
                                              color: Colors.red
                                            ),)),
                                            Divider(
                                               color: Colors.grey,
                                               thickness: 1.0,
                                                indent: 2.0,
                                                endIndent: 2.0,
                                            )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            child: Text("Faculty:", style: TextStyle(
                                              fontSize: 18,
                                            ),)),
                                          
                                          Container(
                                            padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                                            child: Text("Natural and Applied Sciences", style: TextStyle(
                                              color: Colors.red
                                            ),)),
                                            Divider(
                                               color: Colors.grey,
                                               thickness: 1.0,
                                                indent: 2.0,
                                                endIndent: 2.0,
                                            )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            child: Text("Admission Year:", style: TextStyle(
                                              fontSize: 18,
                                            ),)),
                                          
                                          Container(
                                            padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                                            child: Text("2018/2019", style: TextStyle(
                                              color: Colors.red
                                            ),)),
                                            // Divider(
                                            //    color: Colors.grey,
                                            //    thickness: 1.0,
                                            //     indent: 2.0,
                                            //     endIndent: 2.0,
                                            // )
                                        ],
                                      ),
                                    ),

                                  ]
                                ),
                              ),
                                 SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                child: Text("Parent", style: TextStyle(color: Colors.black,
                                      fontSize: 30.0,
                                ),),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 1.0,
                                indent: 20.0,
                                endIndent: 20.0,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 300,
                                height: 280,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey, width: 1.0)
                                ),
                                child: Column(
                                  
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            child: Text("Father's Name:", style: TextStyle(
                                              fontSize: 18,
                                            ),)),
                                          
                                            Divider(
                                               color: Colors.grey,
                                               thickness: 1.0,
                                                indent: 2.0,
                                                endIndent: 2.0,
                                            )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            child: Text("Programme:", style: TextStyle(
                                              fontSize: 18,
                                            ),)),
                                          
                                          
                                            Divider(
                                               color: Colors.grey,
                                               thickness: 1.0,
                                                indent: 2.0,
                                                endIndent: 2.0,
                                            )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            child: Text("Department:", style: TextStyle(
                                              fontSize: 18,
                                            ),)),
                                          
                                         
                                            Divider(
                                               color: Colors.grey,
                                               thickness: 1.0,
                                                indent: 2.0,
                                                endIndent: 2.0,
                                            )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            child: Text("Faculty:", style: TextStyle(
                                              fontSize: 18,
                                            ),)),
                                         
                                            Divider(
                                               color: Colors.grey,
                                               thickness: 1.0,
                                                indent: 2.0,
                                                endIndent: 2.0,
                                            )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            child: Text("Admission Year:", style: TextStyle(
                                              fontSize: 18,
                                            ),)),
                                            // Divider(
                                            //    color: Colors.grey,
                                            //    thickness: 1.0,
                                            //     indent: 2.0,
                                            //     endIndent: 2.0,
                                            // )
                                        ],
                                      ),
                                    ),

                                  ]
                                ),
                              ),

                            ],
                          ),
                      ),
                    ],
                  ),
                ),
               
              ],
            ),
          ],
        )
      ), 
    );
  }
}