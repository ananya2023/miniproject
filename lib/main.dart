import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minipro/signup.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home:HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
            child:Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical:50 ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget> [
                      Text(
                        "welcome",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),

                      ),
                      SizedBox(
                        height:20,
                      ),
                      Text("login page",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color:Colors.grey[700],
                          fontSize: 15,
                        ),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      //login
                      MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.black
                              ),
                              borderRadius:BorderRadius.circular(50)
                          ),
                          child: Text(
                            "login",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18

                            ),
                          )
                      ),
                      //signup
                      SizedBox(height: 20),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));

                        },
                        color: Color(0xff0095FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          "sign up" ,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
        )

    );
  }
}