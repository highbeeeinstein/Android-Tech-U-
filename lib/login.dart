import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypt/crypt.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:shared_preferences/shared_preferences.dart';
=======
>>>>>>> 7c030cf3278cd4c5a2be8db38bef28f6e38c9de6

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _matricNo = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  // SingleChildScrollView(
  //   scrollDirection: Axis.vertical,
  // child:
  Widget build(BuildContext context) {
<<<<<<< HEAD

    CollectionReference users = FirebaseFirestore.instance.collection('users');

    // CollectionReference users = FirebaseFirestore.instance.collection('users');

    return Scaffold(
      // appBar:AppBar(
      //     automaticallyImplyLeading: true,
      // ),
      
=======
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return Scaffold(
>>>>>>> 7c030cf3278cd4c5a2be8db38bef28f6e38c9de6
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.jpg"), fit: BoxFit.fill)),
<<<<<<< HEAD
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Center(
              child: Container(
                width: 400.0,
                height: 500,
                padding: EdgeInsets.fromLTRB(10, 2, 10, 5),
                margin: EdgeInsets.fromLTRB(30, 100, 20, 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: BoxBorder(2.0),
                ),
                child: Column(
=======
        child: Center(
          child: Container(
            width: 350.0,
            height: 900,
            padding: EdgeInsets.fromLTRB(10, 2, 10, 5),
            margin: EdgeInsets.fromLTRB(30, 100, 20, 50),
            decoration: BoxDecoration(
              color: Colors.white,
              // border: BoxBorder(2.0),
            ),
            child: ListView(
              children: [
                Column(
>>>>>>> 7c030cf3278cd4c5a2be8db38bef28f6e38c9de6
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
                                decoration: const InputDecoration(
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
                                      width: 2.0,
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
                                height: 30,
                              ),
                              TextFormField(
<<<<<<< HEAD
                                
=======
>>>>>>> 7c030cf3278cd4c5a2be8db38bef28f6e38c9de6
                                controller: _password,
                                obscureText: true,
                                obscuringCharacter: ("*"),
                                decoration: const InputDecoration(
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
                                      width: 2.0,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                  ),
                                  prefixIcon: Icon(Icons.password),
<<<<<<< HEAD
                                  
=======
>>>>>>> 7c030cf3278cd4c5a2be8db38bef28f6e38c9de6
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
<<<<<<< HEAD
                                height: 15,
=======
                                height: 10,
>>>>>>> 7c030cf3278cd4c5a2be8db38bef28f6e38c9de6
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                child: TextButton(
                                    onPressed: () {
<<<<<<< HEAD

                                      // Navigator.pushNamed(context, '/forget');
                                      // final c1 = Crypt.sha256('amubieya');
                                      // print(c1);

                                      // Navigator.pushNamed(context, '/forget');
                                      final c1 = Crypt.sha256('islamiat');
=======
                                      //Navigator.pushNamed(context, '/forget');
                                      final c1 = Crypt.sha256('einstein');
>>>>>>> 7c030cf3278cd4c5a2be8db38bef28f6e38c9de6
                                      print(c1);
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
<<<<<<< HEAD
                                height: 20,
                              ),
                              Container(
                                width: 350,
                                height: 85,
                                color: Colors.red,
                                child: TextButton(
                                  // onPressed: (){
                                  //   if(_formKey.currentState!.validate()){
                                  //      Navigator.pushNamed(context, '/dash');
                                  //   }
                                  // },
                                    onPressed: () async {
                                      SharedPreferences prefs = await SharedPreferences.getInstance();
=======
                                height: 10,
                              ),
                              Container(
                                width: 300,
                                height: 75,
                                color: Colors.red,
                                child: TextButton(
                                    onPressed: () async {
>>>>>>> 7c030cf3278cd4c5a2be8db38bef28f6e38c9de6
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
<<<<<<< HEAD
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
=======
>>>>>>> 7c030cf3278cd4c5a2be8db38bef28f6e38c9de6
                                            Navigator.pushNamed(
                                                context, '/dash');
                                          } else {
                                            print("Wrong Password");
                                          }
                                        } else {
                                          print("Matric No not in db");
                                        }
                                        //Navigator.pushNamed(context, '/dash');
                                      }

                                      // Navigator.pushNamed(context, '/dash');
                                    },
<<<<<<< HEAD
                                   

=======
>>>>>>> 7c030cf3278cd4c5a2be8db38bef28f6e38c9de6
                                    child: Text(
                                      "Log In",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    )),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
<<<<<<< HEAD
              ),
            ),
          ],
=======
              ],
            ),
          ),
>>>>>>> 7c030cf3278cd4c5a2be8db38bef28f6e38c9de6
        ),
      ),
    );
    // );
  }
}
