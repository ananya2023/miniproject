import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minipro/profilepage.dart';

class burgerpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer'),
        backgroundColor: Colors.indigoAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[
                        Colors.indigo,
                        Colors.indigoAccent
                      ]
                  )
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material( borderRadius: BorderRadius.all(Radius.circular(10.0)),elevation:40,
                      child :Padding(padding: EdgeInsets.all(5),child: Image.asset('images/peace.jpg',width:150,height:125,),
                    ),),
                  ],
                ),
              ),
            ),
            CustomListTile(Icons.person,'Profile',()=>
            {
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => profile()));
                },
                child: Container(),
              )
            }
            ),

            CustomListTile(Icons.phone,'Help!!!',()=>{}),
            CustomListTile(Icons.history,'History',()=>{}),
            CustomListTile(Icons.logout,'Logout',()=>{}),
          ],
        ),
      ),
    );
  }
}
class CustomListTile extends StatelessWidget{
  IconData icon;
  String text;
  Function onTap;
  CustomListTile(this.icon,this.text,this.onTap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(padding: const EdgeInsets.fromLTRB(8.0, 0,8.0, 0),
      child:Container(
        decoration: BoxDecoration(
            border: Border(bottom : BorderSide(color: Colors.grey))
        ),
        child: InkWell(
          splashColor: Colors.blue,
          onTap: () {
          },
          child:Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children :<Widget>[
                    Icon(icon),
                    Text(text,style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
