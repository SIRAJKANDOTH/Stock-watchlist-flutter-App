import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';

class ScreenerView extends StatefulWidget {
  String stockurl;
  ScreenerView({this.stockurl});
  final Completer<WebViewController> _completer = Completer<WebViewController>();

  @override
  _ScreenerViewState createState() => _ScreenerViewState();
}


class _ScreenerViewState extends State<ScreenerView> {
  final Completer<WebViewController> _completer = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(

        //iconTheme: IconThemeData(color: Colors.blue),

      //  title: Row(
         // mainAxisAlignment: MainAxisAlignment.center,
        //  children: <Widget>[
          //  Text(
           //   "BUSINESS",
          //    style:
          //    TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
          //  ),
         //   Text(
         //     "NEWS",
          //    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
         //   )
        //  ],
       // ),
      //  actions: <Widget>[
        //  Opacity(
             // opacity:0,
             // child:Container(
              //    padding: EdgeInsets.symmetric(horizontal: 16),
               //   child: Icon(Icons.share,)))
       // ],
       // backgroundColor: Colors.transparent,
        //elevation: 0.0,
    //  ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebView(
          initialUrl:  widget.stockurl,
          onWebViewCreated: (WebViewController webViewController){
            _completer.complete(webViewController);
          },
        ),
      ),
    );
  }
}

