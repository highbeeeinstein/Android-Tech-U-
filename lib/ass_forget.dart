import 'package:flutter/material.dart';
class Assesment_forget extends StatefulWidget {
  const Assesment_forget({ Key? key }) : super(key: key);

  @override
  _Assesment_forgetState createState() => _Assesment_forgetState();
}

class _Assesment_forgetState extends State<Assesment_forget> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text("Forgot Password", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text("Please enter your Identity so we can send you an email to reset your password"),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text("Identity"),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                           border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                         
                                borderSide: BorderSide(color: Colors.blue, width: 3.0,),
                                        //  borderRadius: BorderRadius.all(Radius.circular(0)),
                                       ),
                                      //  enabledBorder: OutlineInputBorder(
                                      //    borderSide: BorderSide(color: Colors.blueGrey,  width: 1.0,),
                                      //   //  borderRadius: BorderRadius.all(Radius.circular(50)),
                                      //  ),
                                      hoverColor: Colors.amber,
                                      //  prefixIcon: const Icon(Icons.person),
                                      // hintText: 'Enter your Matric Number',
                                      // labelText: 'Login ID',
                                      // labelStyle: TextStyle(
                                      //   color: Colors.blue,
                                      //   fontSize: 20,
                                      // ),
                                    ),
                                    validator: (value){
                                      if (value!.isEmpty){
                                         return 'Please enter your Login ID';
                                      }
                                      return null;
      
                                    },
                    )
                  ],
                )
                ),
            ),
            // Container(
            //   child: ,
            // )
             Container(
                      margin: EdgeInsets.fromLTRB(100, 20, 0, 0),
                      width: 90.0,
                      height: 50.0,
                     
                      decoration: BoxDecoration(
                        // border: OutlineInputBorder(),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(width: 1.0)
                        //  color: Colors.red,
                      ),
                      child: TextButton(
                        onPressed: (){}, 
                        child: Text("Submit", style: TextStyle(color: Colors.black, fontSize: 17),)
                        ),
                    )  
          ],
        ),
    );
  }
}