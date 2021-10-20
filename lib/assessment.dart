import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Lecturer_assessment extends StatefulWidget {
  const Lecturer_assessment({ Key? key }) : super(key: key);

  @override
  _Lecturer_assessmentState createState() => _Lecturer_assessmentState();
}

class _Lecturer_assessmentState extends State<Lecturer_assessment> {
  final _formKey = GlobalKey<FormState>();
   bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 200.0,
                      height: 150.0,
                      margin: EdgeInsets.fromLTRB(90, 80, 20, 10),
                      child: Image(
                        image: AssetImage('assets/logo_login.png')
                        ),
                    ),
                    Container(
                       margin: EdgeInsets.fromLTRB(120, 0, 20, 10),
                      child: Text("Please Sign In", style: TextStyle(fontSize: 25.0),),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(60, 0, 40, 10),
                      child: Form(
                        key: _formKey,
                        child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 350.0,
                                          child: TextFormField( 
                                            
                                             decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                               focusedBorder: OutlineInputBorder(
                                                 
                                                 borderSide: BorderSide(color: Colors.blue, width: 3.0,),
                                                //  borderRadius: BorderRadius.all(Radius.circular(0)),
                                               ),
                                               enabledBorder: OutlineInputBorder(
                                                 borderSide: BorderSide(color: Colors.blueGrey,  width: 1.0,),
                                                //  borderRadius: BorderRadius.all(Radius.circular(50)),
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
                                        ),
                                        SizedBox(
                                          height: 1,
                                        ),
                                        Container(
                                          width: 350,
                                          child: TextFormField(
                                             obscureText: true,
                                            obscuringCharacter: ("*"),
                                             decoration: const InputDecoration(
                                               border: OutlineInputBorder(),
                                               focusedBorder: OutlineInputBorder(
                                                 borderSide: BorderSide(color: Colors.blue,  width: 3.0,),
                                                //  borderRadius: BorderRadius.all(Radius.circular(0)),
                                               ),
                                               enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.blueGrey,  width: 1.0,),
                                                //  borderRadius: BorderRadius.all(Radius.circular(50)),
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
                                        ),

                                       ] ),
                        ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(100, 0, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                             activeColor: Colors.blue,
                              value: this._value,
                                onChanged: (value) {
                                // int _counter=0;
                                  setState(() {
                                                      
                                  this._value = value!;
                                    // _counter++;
                                 });
                          }),
                          Text("Remeber Me", style: TextStyle(fontSize: 20),)
                        ],
                        
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 20, 10),
                        width: 300.0,
                        height: 70.0,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              // padding:
                              //     MaterialStateProperty.all(EdgeInsetsGeometry.infinity),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                            ),
                            onPressed: () {
                                 if (_formKey.currentState!.validate()) {
                                                 launch("https://assessment.tech-u.edu.ng/");
                                 }
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(100, 0, 20, 0),
                        child: TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/forg_ass');
                          }, 
                          child: Text("Forgot your password?", style: TextStyle(color: Colors.blue, fontSize: 20.0),)
                          ),
                      ),
                       SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(150, 0, 20, 0),
                        child: TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/dash');
                          }, 
                          child: Text("Home", style: TextStyle(color: Colors.blue, fontSize: 20.0),)
                          ),
                      )
                  ],
                ),
              ],
            ),
          ),
        ),  
    );
  }
}