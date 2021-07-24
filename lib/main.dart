import 'package:mystockapp/screens/loginscreen/Auth_Service.dart';
import 'package:mystockapp/screens/loginscreen/HomePage.dart';
import 'package:mystockapp/screens/loginscreen/SignUpPage.dart';
import 'package:firebase_core/firebase_core.dart';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mystockapp/screens/alphapage.dart';
//import 'package:mystockapp/loginpage/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:mystockapp/screens/loginscreen/login.dart';
//import 'package:mystockapp/screens/loginscreen/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AuthClass authClass = AuthClass();
  Widget currentPage = SignUpPage();

  @override
  void initState() {
    super.initState();
    // authClass.signOut();
    checkLogin();
  }

  checkLogin() async {
    String tokne = await authClass.getToken();
    print("tokne");
    if (tokne != null)
      setState(() {
        currentPage = Alpha();
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: currentPage,
    );
  }
}

