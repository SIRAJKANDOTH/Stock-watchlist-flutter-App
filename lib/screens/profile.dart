import 'package:mystockapp/screens/loginscreen/SignUpPage.dart';
import 'package:firebase_core/firebase_core.dart';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mystockapp/screens/alphapage.dart';
//import 'package:mystockapp/loginpage/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:mystockapp/screens/loginscreen/login.dart';
//import 'package:mystockapp/screens/loginscreen/auth_bloc.dart';
import 'package:mystockapp/main.dart';
import 'package:mystockapp/screens/loginscreen/Auth_Service.dart';



//here
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mystockapp/screens/loginscreen/Auth_Service.dart';
import 'package:mystockapp/screens/loginscreen/HomePage.dart';

class Profile extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(


        backgroundColor: Colors.black,
        title: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Stock Trade Assistant",style: TextStyle(fontSize: 26),),
                  Icon(Icons.whatshot,color: Colors.red,size: 30,),
                ]),SizedBox(height: 16,),
            SizedBox(height: 3, width:MediaQuery.of(context).size.width,child: ColoredBox(color:Colors.blue),            ),
            SizedBox(height: 10,)

          ],
        ),

      ),
      body:SettingsPage() ,
    );
  }
}
class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[

          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.red,
              size: 40,
            ),
            onPressed: () async{ await AuthClass().signOut();
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (builder) => MyApp()),
                    (route) => false);
              // do something
            },
          ),SizedBox(width: 170,height: 20,)
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: Opacity(opacity: 0,
          child: IconButton(
            onPressed: () {
                   },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.green,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Center(
              child: Text(
                "Profile Settings",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildAccountOptionRow(context, "Privacy and security"),
            buildAccountOptionRow(context, "Content settings"),
            buildAccountOptionRow(context, "Social"),
            buildAccountOptionRow(context, "Language"),
            buildAccountOptionRow(context, "Log out"),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.volume_up_outlined,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow("Turn On ", true),
            buildNotificationOptionRow("Account Activity", true),
            buildNotificationOptionRow("Alternate Theme", false),
            SizedBox(
              height: 50,
            ),
            Center(
              child: OutlineButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text("SIGN OUT",
                    style: TextStyle(
                        fontSize: 16, letterSpacing: 2.2, color: Colors.black)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option 1"),
                    Text("Option 2"),
                    Text("Option 3"),
                  ],
                ),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
