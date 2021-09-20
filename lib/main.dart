import 'package:flutter/material.dart';
import 'package:flutter_application_1/ass_forget.dart';
import 'package:flutter_application_1/assessment.dart';
import 'package:flutter_application_1/bed.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/forgot.dart';
import 'package:flutter_application_1/history.dart';
import 'package:flutter_application_1/internet.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/mail.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/registration.dart';
import 'package:flutter_application_1/reset.dart';
import 'package:flutter_application_1/result.dart';
import 'package:flutter_application_1/signup.dart';
// import 'package:flutter_application_1/expand.dart';
import 'package:flutter_application_1/slider.dart';
import 'package:flutter_application_1/update.dart';
import 'package:flutter_application_1/view_history.dart';
import 'package:flutter_application_1/view_result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
        routes: {
        '/login': (context) => Login(),
        '/signup': (context) => Sign_up(),
          '/forget':(context)=> Forgot_password(),
          '/reset':(context) => Reset_password(),
          '/dash':(context) => Dashboard(),
          '/profile':(context) => Student_profile(),
          '/register':(context) => Course_registration(),
          '/bed':(context) => Bedspace(),
          '/internet':(context) => Internet_access(),
          '/assess':(context) => Lecturer_assessment(),
          '/forg_ass':(context) => Assesment_forget(),
          '/result':(context) => Check_result(),
          '/history':(context) => Course_history(),
          '/email':(context) => Student_mail(),
          '/update':(context) => Update_profile(),
            '/view':(context) => View_result(),
             '/hist':(context) => View_history(),
        },
      // theme: ThemeData(
      //   primarySwatch: Colors.red,
      // ),
      home: 
       MyHomePage(title: 'Tech-U Student Portal'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

 

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      // body: Exp(),
      body: Image_slider(),
     
    //  floatingActionButton: FloatingActionButton(
    //     backgroundColor: Colors.red[600],
    //     onPressed: () {  },
    //     child: Text('click'),
    //   ),
    );
  }
}
