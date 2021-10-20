import 'package:flutter/material.dart';
class Reset_password extends StatefulWidget {
  const Reset_password({ Key? key }) : super(key: key);

  @override
  _Reset_passwordState createState() => _Reset_passwordState();
}

class _Reset_passwordState extends State<Reset_password> {
  final _formKey = GlobalKey<FormState>();
   final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
          appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.red),
        title: Text("RESET PASSWORD", style: TextStyle(color: Colors.red, fontSize: 20),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.purple,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Center(
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                width: 400.0,
                height: 630.0,
                child: Column(
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.fromLTRB(100, 20, 100, 0),
                        child: Icon(Icons.lock, size: 100.0, color: Colors.yellow,),
                      ),
                      Text("Reset Your \n Password?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                      ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 5, 10, 2),
                        child: Text("Make sure you remember your password", style: TextStyle(
                          color: Colors.red, fontSize: 15,
                        ),),
                        ),
                         SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children:[
                                TextFormField(
                                   obscureText: true,
                                  obscuringCharacter: ("*"),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                     border: OutlineInputBorder(),
                                         focusedBorder: OutlineInputBorder(
                                         borderSide: BorderSide(color: Colors.black, width: 3.0,),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                           ),
                                          enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.red,  width: 2.0,),
                                           borderRadius: BorderRadius.all(Radius.circular(50)),
                                         ),
                                         prefixIcon: Icon(Icons.lock,color: Colors.purple,),
                                    labelText: "Current Password",
                                    hintText: "Enter your Current password",
                                    hintStyle: TextStyle(
                                    ),
                                      labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                    ),
                                    validator: (value){
                                          if(( value!.isEmpty) ) {
                                              return("Enter your current password");
                                          }
                                    },
                                    
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    controller: _pass,
                                   obscureText: true,
                                  obscuringCharacter: ("*"),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                     border: OutlineInputBorder(),
                                         focusedBorder: OutlineInputBorder(
                                         borderSide: BorderSide(color: Colors.black, width: 3.0,),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                           ),
                                          enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.red,  width: 2.0,),
                                           borderRadius: BorderRadius.all(Radius.circular(50)),
                                         ),
                                         prefixIcon: Icon(Icons.lock, color: Colors.purple,),
                                    labelText: "New Password",
                                    hintText: "Enter your New password",
                                    hintStyle: TextStyle(
                                    ),
                                      labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                    ),
                                    validator: (text){
                                      // var comfirmPass = text;
                                          if(( text!.isEmpty) ) {
                                              return("Enter your New password");
                                          }
                                          else if(text.length<=5){
                                            return ("Enter atleast 5 characters");
                                          }
                                          // else if(text.){

                                          // }
                                          return null;
                                    },
                                    
                                  ),
                                   SizedBox(
                                    height: 10,
                                  ),
                                   TextFormField(
                                      controller: _confirmPass,
                                   obscureText: true,
                                  obscuringCharacter: ("*"),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                     border: OutlineInputBorder(),
                                         focusedBorder: OutlineInputBorder(
                                         borderSide: BorderSide(color: Colors.black, width: 3.0,),
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                           ),
                                          enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.red,  width: 2.0,),
                                           borderRadius: BorderRadius.all(Radius.circular(50)),
                                         ),
                                         prefixIcon: Icon(Icons.lock),
                                    labelText: "Comfirm Password",
                                    hintText: "Enter your Comfirmed password",
                                    hintStyle: TextStyle(
                                    ),
                                      labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                    ),
                                    validator: (value){
                                      // var comfirmPass = text;
                                          if(( value!.isEmpty) ) {
                                              return("Enter your comfirmed password");
                                          }
                                          else if(value != _pass.text){
                                            return("Enter the same password as above");
                                            
                                          }
                                          return null;
                                    },
                                    
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                      Container(
                                        height: 70,
                                        width: 300,
                                        color: Colors.green,
                                        child: TextButton(
                                          onPressed: (){
                                            if (_formKey.currentState!.validate()) {
                                                Navigator.pushNamed(context, '/login');
                                               }
                                          }, 
                                          child: Text("Change Password", style: TextStyle(
                                            color: Colors.white, fontSize: 30,
                                            ),),
                                          ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextButton(
                                        onPressed: (){
                                              Navigator.pushNamed(context, '/login');
                                                  // showAlertDialog(context);
                                        }, 
                                        child: Text("Back to Login", style: TextStyle(
                                          color: Colors.red, fontSize: 25,
                                          ))
                                        ),
                                
                            ]
                          )
                          ),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
showAlertDialog(BuildContext context) {  
  // Create button  
  // ignore: deprecated_member_use
  Widget okButton = FlatButton(  
    child: Text("OK"),  
    onPressed: () {  
      Navigator.of(context).pop();  
    },  
  );  
  
  // Create AlertDialog  
  AlertDialog alert = AlertDialog(  
    title: Text("Simple Alert"),  
    content: Text("This is an alert message."),  
    actions: [  
      okButton,  
    ],  
  );  
  
  // show the dialog  
  showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      return alert;  
    },  
  );  
}  