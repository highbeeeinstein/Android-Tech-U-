import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  // SingleChildScrollView(
    //   scrollDirection: Axis.vertical,
      // child: 
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
           height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background.jpg"), fit: BoxFit.fill)),
            child: Container(
               padding: EdgeInsets.fromLTRB(10, 2, 10, 5),
                  margin: EdgeInsets.fromLTRB(30, 130, 20, 70),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: BoxBorder(2.0),
                  ),
                  child: ListView(
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
                                )
                            ),
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
                                    
                                     decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                       focusedBorder: OutlineInputBorder(
                                         borderSide: BorderSide(color: Colors.red, width: 3.0,),
                                         borderRadius: BorderRadius.all(Radius.circular(0)),
                                       ),
                                       enabledBorder: OutlineInputBorder(
                                         borderSide: BorderSide(color: Colors.red,  width: 2.0,),
                                         borderRadius: BorderRadius.all(Radius.circular(50)),
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
                                    validator: (value){
                                      if (value!.isEmpty){
                                         return 'Please enter your Login ID';
                                      }
                                      return null;
      
                                    },
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                     obscureText: true,
                                    obscuringCharacter: ("*"),
                                     decoration: const InputDecoration(
                                       border: OutlineInputBorder(),
                                       focusedBorder: OutlineInputBorder(
                                         borderSide: BorderSide(color: Colors.red,  width: 3.0,),
                                         borderRadius: BorderRadius.all(Radius.circular(0)),
                                       ),
                                       enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.red,  width: 2.0,),
                                         borderRadius: BorderRadius.all(Radius.circular(50)),
                                       ),
                                       prefixIcon: Icon(Icons.password),
                                      hintText: 'Write your password',
                                      labelText: 'Password',
                                      labelStyle: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                      ),
                                    ),
                                    validator: (value){
                                      if (value!.isEmpty){
                                         return 'Please enter your Password';
                                      }
                                      
                                      return null;
      
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: TextButton(
                                      onPressed: (){
                                        Navigator.pushNamed(context, '/forget');
                                      }, 
                                    child: Text("forgot your password?", 
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      
                                          color: Colors.black, fontSize: 17, 
                                    ),
                                    )
                                    ),
                                  ),
                                   SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 300,
                                    height: 70,
                                    color: Colors.red,
                                    child: TextButton(
                                      onPressed: (){
                                      //  if (_formKey.currentState!.validate()) {
                                      //   Navigator.pushNamed(context, '/dash');
                                      //  }
                                        Navigator.pushNamed(context, '/dash');
                                      }, 
                                      child: Text(
                                        "Log In", style: TextStyle(color: Colors.white, fontSize: 30),
                                      )
                                      ),
                                  ),
                                ],
                              )
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
            ),
        ),
    );
    // );
  }
}