import 'package:flutter/material.dart';
class Forgot_password extends StatefulWidget {
  const Forgot_password({ Key? key }) : super(key: key);

  @override
  _Forgot_passwordState createState() => _Forgot_passwordState();
}

class _Forgot_passwordState extends State<Forgot_password> { 
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.red),
        title: Text("FORGOT PASSWORD", style: TextStyle(color: Colors.red, fontSize: 20),),
      ),
      body: Container(
        
          height: double.infinity,
            width: double.infinity,
          color:Colors.white, 
          child: ListView(
            scrollDirection:Axis.vertical,
            children: [
              Center(
                
                child: Container(
                  width: 300.0,
                  height: 500.0,
                  margin: EdgeInsets.all(20),
                  color: 
                  Color.fromRGBO(228, 242, 243, 1),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.fromLTRB(100, 20, 100, 0),
                        child: Icon(Icons.lock, size: 100.0, color: Colors.yellow,),
                      ),
                      Text("Forgot Your \n Password?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                      ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 2),
                        child: Text("Enter your Tech-U E-mail", style: TextStyle(
                          color: Colors.red, fontSize: 15,
                        ),),
                        ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children:[
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
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
                                           borderRadius: BorderRadius.all(Radius.circular(10)),
                                         ),
                                    labelText: "Email",
                                    hintText: "Enter your Email",
                                    hintStyle: TextStyle(
                                    ),
                                      labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                    ),
                                    validator: (value){
                                          if(!(value!.contains('@') ) ) {
                                              return("Enter your valid Email");
                                          }
                                          else if(value.isEmpty){
                                            return("Enter your Email");
                                          }
                                          return null;
                                    },
                                    
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                      Container(
                                        height: 70,
                                        width: 300,
                                        color: Colors.green,
                                        child: TextButton(
                                          onPressed: (){
                                            // if (_formKey.currentState!.validate()) {
                                            //     Navigator.pushNamed(context, '/reset');
                                            //    }
                                            if (_formKey.currentState!.validate()) {
                                                showAlertDialog(context);
                                            }
                                               
                                            
                                          }, 
                                          child: Text("Reset Password", style: TextStyle(
                                            color: Colors.white, fontSize: 30,
                                            ),),
                                          ),
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
    //  floatingActionButton: FloatingActionButton.extended(
    //    backgroundColor: Colors.purple,
    //    onPressed: (){
    //           Navigator.pushNamed(context, '/login');
    //    }, 
    //    icon: Icon(Icons.send),
    //    label: Text("Send", style: TextStyle(fontSize: 20),), 
       
    //    ),
       
    );
  }
}
showAlertDialog(BuildContext context) {  
  // Create button  
  // ignore: deprecated_member_use
  Widget okButton = FlatButton(  
    child: Text("SUBMIT"),  
    onPressed: () {  
      Navigator.pushNamed(context, '/reset');
      
    },  
  );  
  
  // Create AlertDialog  
  AlertDialog alert = AlertDialog(  
    title: Text("forgot Password"),  
    content: Text("You have successfully logged in on your Email"),  
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