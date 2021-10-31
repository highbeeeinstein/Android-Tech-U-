import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:progressive_image/progressive_image.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashboard.dart';
class Student_profile extends StatefulWidget {
  const Student_profile({ Key? key }) : super(key: key);

  @override
  _Student_profileState createState() => _Student_profileState();
}

class _Student_profileState extends State<Student_profile> {
    String matric_num = "";
  String fname = "";
  String lname = "";
  String email = "";
  String level = "";
  String Programme = "";
  String mname = "";
  String Faculty = "";
  String Department = "";
  String Admission = "";
  String gender = "";
  String state_of_origin = "";
  String image = "";
  String lga = "";
  String phone_num = "";
  String dob = "";
  String address = "";
  String residence_state = "";
  String residence_city = "";
  

  void initSharedPreference() async {
    //  CollectionReference users = FirebaseFirestore.instance.collection('users');
      
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
        Admission = '${prefs.getString('Admission')}';
        gender = '${prefs.getString('gender')}';
        state_of_origin = '${prefs.getString('state_of_origin')}';
         image = '${prefs.getString('image')}';
         dob = '${prefs.getString('dob')}';
         lga = '${prefs.getString('lga')}';
         phone_num = '${prefs.getString('phone_num')}';
         residence_city = '${prefs.getString('residence_city')}';
         address = '${prefs.getString('address')}';
         residence_state = '${prefs.getString('residence_state')}';
    });
    //  final response = await users.doc(matric_num.replaceAll("/", '')).get();
    //  image = response.get('image');
  }

  @override
  void initState() {
    super.initState();
    initSharedPreference();
  }
  //  static late SharedPreferences _preferences;
  //  static const _KeyUser ='user';
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
        color: Colors.blueGrey,
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
                    margin: EdgeInsets.all(10),
                    height: 2400,
                    width: 500,
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
                          width: 470,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                           
                          ),
                          child: Container(
                            width: 100,
                            height: 100,
                            // child: CircleAvatar(
                            //   radius: 50.0,
                            //      child: ProgressiveImage(
                            //     placeholder: AssetImage('assets/img_avatar2.png'), 
                            //     thumbnail: NetworkImage(image), 
                            //     image: NetworkImage(image), 
                            //     width: 50.0, 
                            //     height: 30.0
                            //     ),
                            // ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage( 
                                image: NetworkImage(image)
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
                    height: 600,
                    width: 470,
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
                                Text(level, style: TextStyle(color: Colors.red, fontSize: 20),),
                               
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
                                Text(gender, style: TextStyle(color: Colors.red, fontSize: 20),),
                               
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
                                Text(dob, style: TextStyle(color: Colors.red, fontSize: 20),),
                                // TextField("", style: TextStyle(color: Colors.red, fontSize: 20),),
                                // TextField(
                                //   onChanged: (date_of_birth){

                                //   },
                                // )
                               
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
                                Text(phone_num, style: TextStyle(color: Colors.red, fontSize: 20),),
                               
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
                                Text(lga, style: TextStyle(color: Colors.red, fontSize: 20),),
                               
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
                                Text(state_of_origin, style: TextStyle(color: Colors.red, fontSize: 20),),
                               
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
                              height: 10.0,
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
                                Text("State of Residence:", style: TextStyle(fontSize: 20),),
                                Text(residence_state, style: TextStyle(color: Colors.red, fontSize: 20),),
                               
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
                                Text("City of Residence:", style: TextStyle(fontSize: 20),),
                                Text(residence_city, style: TextStyle(color: Colors.red, fontSize: 20),),
                               
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
                          width: 470,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                           
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Address", style: TextStyle(fontSize: 25),
                                
                              ),
                              Text(address, style: TextStyle(fontSize: 25),),
                            ],
                          )
                        ),
                        SizedBox(
                          height: 10,
                        ),
                         Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 470,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.red,
                           
                          ),
                          child: Container(
                            height: 30,
                            width: 100,
                            color: Colors.redAccent,
                            margin: EdgeInsets.fromLTRB(60, 2, 80, 2),
                            padding: EdgeInsets.all(2),
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
                            width: 470,
                            decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey, width: 2.0),
                                    color: Colors.white,
                              ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                  child: Text("Matric No: $matric_num", style: TextStyle(color: Colors.red,
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
                                      Text("Mr/Mrs.", style: TextStyle(fontSize: 17),),
                                      Text(fname, style: TextStyle(fontSize: 17),)
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
                                      Text(mname, style: TextStyle(fontSize: 17),),
                                      Text(lname, style: TextStyle(fontSize: 17),)
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
                                  width: 420,
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
                                              child: Text(email, style: TextStyle(
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
                                              child: Text(Programme, style: TextStyle(
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
                                              child: Text(Department, style: TextStyle(
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
                                              child: Text(Faculty, style: TextStyle(
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
                                              child: Text(Admission, style: TextStyle(
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
                                  width: 420,
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
                ),
               
              ],
            ),
          ],
        )
      ), 
    );
    
  }
}
//   static Future init() async =>
//       _preferences= await SharedPreferences.getInstance();

//   static Future setUser() async =>
// }