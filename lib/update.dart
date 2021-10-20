import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dashboard.dart';
class Update_profile extends StatefulWidget {
  const Update_profile({ Key? key }) : super(key: key);

  @override
  _Update_profileState createState() => _Update_profileState();
}

class _Update_profileState extends State<Update_profile> {
final _formKey = GlobalKey<FormState>();
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
        child: Container(
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
                Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text("STUDENT PROFILE", style: TextStyle(color: Colors.red, fontSize: 25.0),),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          // alignment: Alignment.topRight,
                          padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          child: TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/dash');
                            }, 
                          child: Text("Dashboard     ", 
                            
                           style: TextStyle(color: Colors.red, ),)
                          ),
                        ),
                        Icon(FontAwesomeIcons.angleRight, ),
                        Text("   Update Details", )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    color: Colors.white,
                    width: 400.0,
                    height: 580.0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text("Profile Information", style: TextStyle(fontSize: 20),)),
                        SizedBox(
                          height: 20,
                        ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextFormField(
                                      decoration: InputDecoration(
                                        // focusedBorder: OutlineInputBorder(
                                        //    borderSide: BorderSide( color: Colors.red,  width: 3.0,),
                                        // ),  
                                        labelText: "Phone No" , 
                                      ),

                                  ),
SizedBox(
                            height: 10,
                        ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        // focusedBorder: OutlineInputBorder(
                                        //    borderSide: BorderSide( color: Colors.red,  width: 3.0,),
                                        // ), 
                                        labelText: "Date of Birth(DD/MM/YY e.g 01/01/2020)" , 
                                      ),

                                  ),
                                  SizedBox(
                            height: 10,
                        ),
                                      TextFormField(
                                      decoration: InputDecoration(
                                        // focusedBorder: OutlineInputBorder(
                                        //    borderSide: BorderSide( color: Colors.red,  width: 3.0,),
                                        // ), 
                                        labelText: "State of Origin" , 
                                      ),

                                  ),
                                  SizedBox(
                            height: 10,
                        ),
                                  TextFormField(
                                      decoration: InputDecoration(
                                        // focusedBorder: OutlineInputBorder(
                                        //    borderSide: BorderSide( color: Colors.red,  width: 3.0,),
                                        // ), 
                                        labelText: "LGA of Origin" , 
                                      ),

                                  ),
                                   SizedBox(
                          height: 10,
                        ),
                                   TextFormField(
                                      decoration: InputDecoration(
                                        // focusedBorder: OutlineInputBorder(
                                        //    borderSide: BorderSide( color: Colors.red,  width: 3.0,),
                                        // ), 
                                        labelText: "Address of Residence" , 
                                        hintMaxLines: 5,
                                      ),

                                  ),
                                   SizedBox(
                          height: 10,
                        ),
                                   TextFormField(
                                      decoration: InputDecoration(
                                        // focusedBorder: OutlineInputBorder(
                                        //    borderSide: BorderSide( color: Colors.red,  width: 3.0,),
                                        // ), 
                                        labelText: "State of Residence" , 
                                      ),
                                      
                                  ),
                                   SizedBox(
                          height: 10,
                        ),
                                   TextFormField(
                                      decoration: InputDecoration(
                                        // focusedBorder: OutlineInputBorder(
                                        //    borderSide: BorderSide( color: Colors.red,  width: 3.0,),
                                        // ), 
                                        labelText: "City of residence" , 
                                      ),

                                  ),
                                ],
                              )
                              ),
                          ),
                          SizedBox(
                          height: 20,
                        ),
                  Center(
                    child: Container(
                      // margin: EdgeInsets.fromLTRB(90, 0, 0, 20),
                      padding: EdgeInsets.all(20),
                      width:  210,
                      height: 60,
                      color: Colors.red,
                      child: Text("Save Details", textAlign: TextAlign.center, style: TextStyle(fontSize:20,)),
                        ),
                  )
                      ],
                    )
                  ),
                )
              ]),
                 ],
              ),
        ),
      ),
    );
  }
}