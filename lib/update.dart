// import 'dart:html';
import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashboard.dart';
class Update_profile extends StatefulWidget {
  const Update_profile({ Key? key }) : super(key: key);

  @override
  _Update_profileState createState() => _Update_profileState();
}

// ignore: camel_case_types
class _Update_profileState extends State<Update_profile> {
   late double _height;
  late double _width;

  late String _setTime, _setDate;

  late String _hour, _minute, _time;

  late String dateTime;
  // String dob = "";

  DateTime selectedDate = DateTime.now();

  // TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

TextEditingController dobController = TextEditingController();
  // TextEditingController _timeController = TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(1900),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        dobController.text = DateFormat.yMd().format(selectedDate);
      });
  }

  // Future<Null> _selectTime(BuildContext context) async {
  //   final TimeOfDay? picked = await showTimePicker(
  //     context: context,
  //     initialTime: selectedTime,
  //   );
  //   if (picked != null)
  //     setState(() {
  //       selectedTime = picked;
  //       _hour = selectedTime.hour.toString();
  //       _minute = selectedTime.minute.toString();
  //       _time = _hour + ' : ' + _minute;
  //       _timeController.text = _time;
  //       _timeController.text = formatDate(
  //           DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
  //           [hh, ':', nn, " ", am]).toString();
  //     });
  // }

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
  
//  @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
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

     dobController.text = DateFormat.yMd().format(DateTime.now());

    // _timeController.text = formatDate(
    //     DateTime(2019, 08, 1, DateTime.now().hour, DateTime.now().minute),
        // [hh, ':', nn, " ", am]).toString();
    super.initState();
    initSharedPreference();
  }
final _formKey = GlobalKey<FormState>();
 
  @override
  // ignore: unused_element
Widget build(BuildContext context) {
     _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    dateTime = DateFormat.yMd().format(DateTime.now());
    TextEditingController phoneController = TextEditingController(text: phone_num);
  TextEditingController dobController = TextEditingController(text: dob);
  TextEditingController lgaController = TextEditingController(text: lga);
   TextEditingController stateController = TextEditingController(text: state_of_origin);
   TextEditingController stateresidenceController = TextEditingController(text: residence_state);
    TextEditingController cityresidenceController = TextEditingController(text: residence_city);
     TextEditingController addressController = TextEditingController(text: address);
    // TextEditingController dbController = TextEditingController(text: dob);
    
   
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
                    height: 850.0,
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
                                    controller: phoneController,
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
                      //          TextButton(
                      //            onPressed: () {
                      //         DatePicker.showDatePicker(context,
                      //         showTitleActions: true,
                      //         minTime: DateTime(1900, 1, 1),
                      //         maxTime: DateTime(2021, 1, 1), 
                      //         onChanged: (date) {
                      //       print('change $date');
                      //     }, onConfirm: (date) {
                      //       print('confirm $date');
                      //     }, currentTime: DateTime.now(), locale: LocaleType.en);
                      //   },
                      //  child: Text(
                      //       'Date of Birth(DD/MM/YY e.g 01/01/2020)',
                      //     style: TextStyle(color: Colors.blue),
                      //  )),
                       
          // TextFormField(
          //   //  focusNode: _focusNode,
          //    keyboardType: TextInputType.phone,
          //    autocorrect: false,
          //    controller: dobController,
          //    onSaved: (value) async {
          //      var data;
          //      data.registrationdate = value;
          //    },
          //    onTap: () {
          //     //  _selectDate();
          //     Future<DateTime?> picked =  showDatePicker(
          //      context: context,
          //      initialDate: new DateTime.now(),
          //       firstDate: new DateTime(1900),
          //       lastDate: new DateTime(2030));
          //          if (picked != null) {
          //            var data;
          //            setState(
          //                () => { 
          //                  data.registrationdate = picked.toString(),
          //                        dobController.text = picked.toString()
          //                   }
          //             );
          //          }
          //     //  FocusScope.of(context).requestFocus(new FocusNode());
          //    },

          //    maxLines: 1,
          //    //initialValue: 'Aseem Wangoo',
          //    validator: (value) {
          //      if (value!.isEmpty || value.length < 1) {
          //        return 'Choose Date';
          //      }
          //    },
          //    decoration: InputDecoration(
          //      labelText: 'Date of Birth',
          //      //filled: true,
          //      icon: const Icon(Icons.calendar_today),
          //      labelStyle:
          //          TextStyle(decorationStyle: TextDecorationStyle.solid),
          //    ),
          //                     ),
          TextFormField(
       controller: dobController,
       decoration: InputDecoration(
       labelText: "Date of birth",
       hintText: "Ex. Insert your dob",), 
       onTap: () async{
              DateTime date = DateTime(1900);
              FocusScope.of(context).requestFocus(new FocusNode());

               date = (await showDatePicker(
                context: context, 
                initialDate:DateTime.now(),
                firstDate:DateTime(1900),
                lastDate: DateTime(2100)))!;

                  dobController.text = date.toIso8601String();},),
        // TextFormField(
        //   // controller: dobController,
        //   onTap: (){
        //      _selectDate(context);
        //   },
        //   style: TextStyle(fontSize: 40),
        //   textAlign: TextAlign.center,
        //   enabled: false,
        //   keyboardType: TextInputType.text,
        //   controller: dobController,
        //   onSaved: (val) async {
        //     _setDate = val!;
        //   },
        //   decoration: InputDecoration(
        //       disabledBorder:
        //           UnderlineInputBorder(borderSide: BorderSide.none),
        //       // labelText: 'Time',
        //       contentPadding: EdgeInsets.only(top: 0.0)
        //       ),
        // ),
              
            
                  SizedBox(
                    height: 10,
                  ),
                    TextFormField(
                       controller: stateController,
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
                                    controller: lgaController,
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
                                     controller: addressController,
                                     maxLines:6,
                                      decoration: InputDecoration(
                                        // focusedBorder: OutlineInputBorder(
                                        //    borderSide: BorderSide( color: Colors.red,  width: 3.0,),
                                        // ), 
                                        labelText: "Address of Residence" , 
                                        hintMaxLines: 6,
                                        
                                      ),

                                  ),
                                   SizedBox(
                          height: 10,
                        ),
                                   TextFormField(
                                     controller: stateresidenceController,
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
                                     controller: cityresidenceController,
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
                  // Center(
                  //   child: Container(
                  //     // margin: EdgeInsets.fromLTRB(90, 0, 0, 20),
                  //     padding: EdgeInsets.all(20),
                  //     width:  210,
                  //     height: 60,
                  //     color: Colors.red,
                  //     child: Text("Save Details", textAlign: TextAlign.center, style: TextStyle(fontSize:20,)),
                  //       ),
                  // )/
                  Center(
                    child: Container(
                       padding: EdgeInsets.all(10),
                        width:  210,
                        height: 60,
                        color: Colors.red,
                      child: TextButton(
                        onPressed: ()async {
                          SharedPreferences prefs = await SharedPreferences.getInstance();
                            
                            CollectionReference users = FirebaseFirestore.instance.collection('users');
                            showDialog(context: context, builder: (context) => 
                            Dialog(
                              child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    CircularProgressIndicator(),
                                    Text("Updating..."),
                                  ],
                                ),
                            )
                            ));
                            await users.doc(matric_num.replaceAll("/", '')).update(
                              {
                                'dob': dobController.text,
                                 'lga': lgaController.text,
                                 'phone_num': phoneController.text,  
                                  'state_of_origin': stateController.text,    
                                   'residence_state': stateresidenceController.text, 
                                   'residence_city': cityresidenceController.text, 
                                   'address': addressController.text,               
                               }
                            );
                            await prefs.setString("dob", dobController.text);
                             await prefs.setString("lga", lgaController.text,);
                            await prefs.setString("phone_num",  phoneController.text);
                            await prefs.setString("state_of_origin",  stateController.text);
                             await prefs.setString("residence_state", stateresidenceController.text);
                              await prefs.setString("residence_city", cityresidenceController.text);
                               await prefs.setString("address", addressController.text);
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Updated!")
                                ));
                        }, 
                        child: Text("Save Details", textAlign: TextAlign.center, 
                        style: TextStyle(fontSize:20, color: Colors.white)),
                        )
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

 


//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }