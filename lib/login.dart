import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypt/crypt.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _matricNo = TextEditingController();
  TextEditingController _password = TextEditingController();
  late bool _passwordVisible;
  String error = '';
  String error2 = '';
  @override
   void initState() {
      _passwordVisible = true;
  }

  Widget build(BuildContext context) {


   

    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return Scaffold(
      // appBar:AppBar(
      //     automaticallyImplyLeading: true,
      // ),
      

    

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.jpg"), fit: BoxFit.fill)),

        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Center(
              child: Container(
                width: 400.0,
                height: 500,
                padding: EdgeInsets.fromLTRB(10, 2, 10, 5),
                margin: EdgeInsets.fromLTRB(30, 130, 20, 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: BoxBorder(2.0),
                ),
                child: Column(

              children: [
                Column(

                  children: [
                    Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/logo_login.png"),
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextFormField(
                                controller: _matricNo,
                                decoration:  InputDecoration(
                                  errorText: error2,
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 3.0,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 3.0,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                  ),
                                  hoverColor: Colors.amber,
                                  prefixIcon: const Icon(Icons.person),
                                  hintText: 'Enter your Matric Number',
                                  labelText: 'Login ID',
                                  labelStyle: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your Login ID';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                //  controller: _userPasswordController,
                                 obscureText: _passwordVisible,
                                controller: _password,
                                // obscureText: true,
                                obscuringCharacter: ("*"),
                                decoration:  InputDecoration(
                                  // helperText: error,
                                  errorText: error,
                                   suffixIcon: IconButton(
                                         icon: Icon(
              
                                         _passwordVisible ? Icons.visibility_off: Icons.visibility,
                                         //  color: Theme.of(context).primaryColorDark,
                                           ),
                                        onPressed: () {
                                     setState(() {
                                        _passwordVisible = !_passwordVisible;
                                           });
                                 },
                               ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 3.0,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 3.0,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                  ),
                                  prefixIcon: Icon(Icons.password),

                                  hintText: 'Write your password',
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your Password';
                                  }

                                  return null;
                                },
                              ),
                              SizedBox(

                                height: 10,

                                // height: 10,

                              ),
                              Container(
                                alignment: Alignment.topRight,
                                child: TextButton(
                                    onPressed: () {


                                      // Navigator.pushNamed(context, '/forget');
                                      // final c1 = Crypt.sha256('einstein');
                                      // print(c1);

                                      // Navigator.pushNamed(context, '/forget');
                                      // final c1 = Crypt.sha256('islamiat');

                                      // Navigator.pushNamed(context, '/forget');
                                      Navigator.pushNamed(context, '/webview');
                                      // final c1 = Crypt.sha256('einstein');

                                      // print(c1);
                                    },
                                    child: Text(
                                      "forgot your password?",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                      ),
                                    )),
                              ),
                              SizedBox(

                                height: 10,
                              ),
                             
                              Container(
                                width: 350,
                                height: 75,
                                color: Colors.red,
                                child: TextButton(
                                    onPressed: () async {
                                       SharedPreferences prefs = await SharedPreferences.getInstance();
                                        showDialog(context: context, builder: (context) => 
                                             Dialog(
                                                 child: Container(
                                                     height: 80,
                                                     width: MediaQuery.of(context).size.width,
                                                   alignment: Alignment.center,
                                                child: Column(
                                                  children: [
                                                       CircularProgressIndicator(),
                                                      Text("Wait in a moment"),
                                                      Text("Loading........")
                                                 ],
                                                ),
                                            )
                                            ));
                                      if (_formKey.currentState!.validate()) {
                                        final response = await users
                                            .doc(_matricNo.text
                                                .replaceAll("/", ''))
                                            .get();
                                        print(response.data().toString());
                                        if (response.exists) {
                                          print("User Exist");
                                          final hashedPassword =
                                              Crypt(response.get("password"));
                                          if (hashedPassword
                                              .match(_password.text)) {
                                            print("Correct Password");

                                          await prefs.setString("matric_no", response.get('matric_num'));
                                           await prefs.setString("fname", response.get('fname'));
                                           await prefs.setString("lname", response.get('lname'));
                                           await prefs.setString("email", response.get('email'));
                                           await prefs.setString("level", response.get('level'));
                                           await prefs.setString("programme", response.get('Programme'));
                                           await prefs.setString("mname", response.get('mname'));
                                           await prefs.setString("department", response.get('Department'));
                                           await prefs.setString("faculty", response.get('Faculty'));
                                           await prefs.setString("state_of_origin", response.get('state_of_origin'));
                                           await prefs.setString("gender", response.get('gender'));
                                           await prefs.setString("Admission", response.get('Admission'));
                                            await prefs.setString("image", response.get('image'));
                                            await prefs.setString("dob", response.get('dob'));
                                            await prefs.setString("phone_num", response.get('phone_num'));
                                            await prefs.setString("lga", response.get('lga'));
                                            await prefs.setString("address", response.get('address'));
                                            await prefs.setString("residence_state", response.get('residence_state'));
                                            await prefs.setString("residence_city", response.get('residence_city'));

                                            Navigator.pushNamed(
                                                context, '/dash');
                                            // Navigator.pushReplacementNamed(context, '/dash');
                                          } else {
                                            // print("Wrong Password");
                                          //  error() {
                                          //     return 'Wrong Password';
                                          // }
                                          setState(() {
                                            error= 'Wrong Password';
                                          });
                                        Navigator.pop(context);
                                    
                                          }
                                        } else {
                                          

                                          setState(() {
                                            error2= 'Wrong Matric Number';
                                          });
                                        Navigator.pop(context);
                                        }
                                        //Navigator.pushNamed(context, '/dash');
                                      }

                                      // Navigator.pushNamed(context, '/dash');
                                      // Navigator.pop(context);
                                      //      ScaffoldMessenger.of(context).showSnackBar(
                                      //  SnackBar(
                                      //     content: Text("Logged In!")
                                      // ));
                                    },

                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    )),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),

        

              ],
            ),
          ),

        ),
          ]),
    ));
    // );
  }
}
