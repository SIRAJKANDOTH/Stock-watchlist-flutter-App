import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'loginhomepage.dart';
import 'package:mystockapp/widgets/stocklist.dart';
import 'package:mystockapp/stockclass.dart';
import 'prediction.dart';
import 'virtualtrade.dart';
import '../views/newsscreen.dart';
import 'package:mystockapp/screens/profile.dart';

class Alpha extends StatefulWidget {


  @override
  _AlphaState createState() => _AlphaState();
}

class _AlphaState extends State<Alpha> {
  int pageindex=0;
  List<Widget> pageList=[
    Homepage(),
    News(),
    Prediction(),
    VirtualTrade(),
    Profile()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pageList[pageindex] ,
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontWeight:FontWeight.w700,fontSize: 17),
          showSelectedLabels: true,
          selectedIconTheme:IconThemeData(size: 33,color: Colors.black45),
          backgroundColor: Colors.white10,
          //fixedColor: Colors.white,

        type: BottomNavigationBarType.fixed,
        currentIndex: pageindex,
        onTap: (value){
      setState((){
        print(value);
        // print(pageindex);
        pageindex=value;
      });
    },
    items: [
    BottomNavigationBarItem(icon: Icon(Icons.assistant_photo,color: Colors.white,),label: 'watchlist',),
    BottomNavigationBarItem(icon: Icon(Icons.article,color: Colors.white),label: 'News'),
    BottomNavigationBarItem(icon: Icon(Icons.money,color: Colors.white),label: 'Virtual Trading'),
    BottomNavigationBarItem(icon: Icon(Icons.waterfall_chart,color: Colors.white),label: 'Prediction'),
      BottomNavigationBarItem(icon: Icon(Icons.account_circle,color: Colors.white),label: 'Profile'),
    ],
    )
    );
  }
}
