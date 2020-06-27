import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _notif=true;
  bool _location=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Profile",style: TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage("lib/assets/person.png"),
                          fit: BoxFit.fill),
                    ),
//                  child: Image.asset("lib/assets/person.png",fit: BoxFit.fill)
                  ),
                  SizedBox(width:20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Aman Verma",style: TextStyle(fontSize: 16),),
                      SizedBox(height: 10,),
                      Text("+919876543210",style: TextStyle(fontSize: 16,color: Colors.grey),),
                      SizedBox(height: 10,),
                      Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),

                        child: Center(child: Text("Edit",style: TextStyle(color: Colors.blue,fontSize: 16),)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height:20),
              Text("Account",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              SizedBox(height:10.0),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text("Location"),
                      ),
                      Divider(height: 10.0,color: Colors.grey,),
                      ListTile(
                        leading: Icon(Icons.remove_red_eye),
                        title: Text("Change Password"),
                      ),
                      Divider(height: 10.0,color: Colors.grey,),
                      ListTile(
                        leading: Icon(Icons.phone_android),
                        title: Text("Change Phone Number"),
                      ),
                      Divider(height: 10.0,color: Colors.grey,),
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text("Change Email"),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height:20),
              Text("Notifications",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              SizedBox(height:10.0),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.notifications_active),
                        title: Text("Notifications"),
                        trailing: Switch(
                          onChanged: (bool value){
                            setState(() {
                              this._notif=value;
                            });
                            if(!value){
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("You have Disabled Notifications"),
                                    action: SnackBarAction(
                                      label: 'UNDO',
                                      onPressed:(){
                                        setState(() {
                                          this._notif=true;
                                        });
                                      }
                                      ,),));
                            }
                          },
                          value: this._notif,
                        ),
                      ),
                      Divider(height: 10.0,color: Colors.grey,),
                      ListTile(
                        leading: Icon(Icons.my_location),
                        title: Text("Location Access"),
                        trailing: Switch(
                          onChanged: (bool value){
                            setState(() {
                              this._location=value;
                            });
                            if(!value){
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("You have Disabled Location access"),
                                    action: SnackBarAction(
                                      label: 'UNDO',
                                      onPressed:(){
                                        setState(() {
                                          this._location=true;
                                        });
                                      }
                                      ,),));
                            }
                          },
                          value: this._location,
                        ),
                      ),
                    ],
                  ),
                ),

              ),

              SizedBox(height:20),
              Text("Other",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              SizedBox(height:10.0),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.language),
                        title: Text("Language"),
                      ),
                      Divider(height: 10.0,color: Colors.grey,),
                      ListTile(
                        leading: Icon(Icons.attach_money),
                        title: Text("Currency"),
                      ),
                    ],
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
