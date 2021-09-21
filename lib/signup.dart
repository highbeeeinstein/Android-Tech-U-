import 'package:flutter/material.dart';
class Sign_up extends StatefulWidget {
  const Sign_up({ Key? key }) : super(key: key);

  @override
  _Sign_upState createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
   final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue,
            child: Center(
              child: Container(
                width: 400.0,
                height: 1500,
                    padding: EdgeInsets.fromLTRB(10, 2, 10, 5),
                    margin: EdgeInsets.fromLTRB(30, 50, 20, 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: BoxBorder(2.0),
                    ),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                            child: Text(
                              "Sign Up", textAlign: TextAlign.center, 
                              style: TextStyle(
                                  fontSize: 30.0, color: Colors.black,
                              ),
                              ),
                          ),
                          SizedBox(
                            height: 20,
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
                                               borderSide: BorderSide(color: Colors.black,  width: 1.0,),
                                              //  borderRadius: BorderRadius.all(Radius.circular(50)),
                                             ),
                                            hoverColor: Colors.amber,
                                            //  prefixIcon: const Icon(Icons.person),
                                            hintText: 'Enter your First Name',
                                            labelText: 'First Name',
                                            labelStyle: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 20,
                                            ),
                                          ),
                                          validator: (value){
                                            if (value!.isEmpty){
                                               return 'Please enter your first name';
                                            }
                                            return null;
      
                                          },
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        TextFormField(
                                          
                                           decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                             focusedBorder: OutlineInputBorder(
                                               borderSide: BorderSide(color: Colors.red, width: 3.0,),
                                               borderRadius: BorderRadius.all(Radius.circular(0)),
                                             ),
                                             enabledBorder: OutlineInputBorder(
                                               borderSide: BorderSide(color: Colors.black,  width: 1.0,),
                                              //  borderRadius: BorderRadius.all(Radius.circular(50)),
                                             ),
                                            hoverColor: Colors.amber,
                                            //  prefixIcon: const Icon(Icons.person),
                                            hintText: 'Enter your Last Name',
                                            labelText: 'Last Name',
                                            labelStyle: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 20,
                                            ),
                                          ),
                                          validator: (value){
                                            if (value!.isEmpty){
                                               return 'Please enter your last name';
                                            }
                                            return null;
      
                                          },
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                         TextFormField(
                                          
                                           decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                             focusedBorder: OutlineInputBorder(
                                               borderSide: BorderSide(color: Colors.red, width: 3.0,),
                                               borderRadius: BorderRadius.all(Radius.circular(0)),
                                             ),
                                             enabledBorder: OutlineInputBorder(
                                               borderSide: BorderSide(color: Colors.black,  width: 1.0,),
                                              //  borderRadius: BorderRadius.all(Radius.circular(50)),
                                             ),
                                            hoverColor: Colors.amber,
                                            //  prefixIcon: const Icon(Icons.person),
                                            hintText: 'Enter your Email Address',
                                            labelText: 'Email Address',
                                            labelStyle: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 20,
                                            ),
                                          ),
                                          validator: (value){
                                            if (value!.isEmpty){
                                               return 'Please enter your Email Address';
                                            }
                                            else if(!(value.contains('@'))){
                                                return 'Please enter your valid Email';
                                            }
                                            return null;
      
                                          },
                                        ),
                                        SizedBox(
                                          height: 20,
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
                                                borderSide: BorderSide(color: Colors.black,  width: 1.0,),
                                              //  borderRadius: BorderRadius.all(Radius.circular(50)),
                                             ),
                                            //  prefixIcon: Icon(Icons.password),
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
                                            else if(value.length<=5){
                                                  return 'Please enter 5 characters';
                                            }
                                            return null;
      
                                          },
                                        ),
                                         SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            color: Colors.blue,
                                          ),
                                          width: 400,
                                          height: 70,
                                          
                                          child: TextButton(
                                            // style: ButtonStyle(
                                              
                                            // ),
                                            onPressed: (){
                                             if (_formKey.currentState!.validate()) {
                                              Navigator.pushNamed(context, '/login');
                                             }
                                            }, 
                                            child: Text(
                                              "Sign Up", style: TextStyle(color: Colors.white, fontSize: 30),
                                            )
                                            ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text("Already have an account", 
                                            style: TextStyle(color: Colors.black, fontSize: 15),
                                            ),
                                            TextButton(
                                              onPressed: (){
                                                  Navigator.pushNamed(context, '/login');
                                              }, 
                                            child: Text("sign in?", style: TextStyle(
                                              color: Colors.blue,fontSize: 15
                                            ), ),
                                            ),
                                          ],
                                        )
                                        
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
      ),
    );
  }
}