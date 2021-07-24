import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class Prediction extends StatefulWidget {
  @override
  _PredictionState createState() => _PredictionState();
}

class _PredictionState extends State<Prediction> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'VIRTUAL TRADE',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Timer _timer, _timer2;
  int totatltime = 500;
  double price = 100.00;
  bool startstop;
  double num = 0.00;
  double add = 100.00;
  int news;
  double updownprice = 0.0;
  double startprice = 100;
  Color icon_text = Colors.white;
  String start_or_stop = 'START';
  double userwealth = 100000;
  IconData myicon = Icons.arrow_upward;
  Color iconcolor = Color(0xff008000);
  int number_of_shares = 0;
  int totalnumofshare = 0;
  int sharesbought = 0;
  SnackBar snackBar;
  double high = 100;
  double low = 100;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  _showSnackBar() {
    snackBar = new SnackBar(
      content: Text(
        "Success, Bought $totalnumofshare shares at the rate of " +
            price.toStringAsFixed(2) +
            ', Shares owned: $sharesbought',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'OpenSans',
        ),
      ),
      backgroundColor: Color(0xff2B76C6),
      duration: Duration(milliseconds: 1200),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  _showSnackBarsell() {
    snackBar = new SnackBar(
        duration: Duration(milliseconds: 1200),
        content: Text(
          "Success, Sold $totalnumofshare shares at the rate of " +
              price.toStringAsFixed(2) +
              ', shares owned: $sharesbought',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
          ),
        ),
        backgroundColor: Color(0xff2B76C6));

    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  int numberofshares(int num) {
    setState(() {
      if (num == 0) {
        number_of_shares = (userwealth / startprice).toInt();
      } else if (num == 1) {}
    });
  }

  void changecolor(double diff) {
    if (diff >= 0) {
      setState(() {
        icon_text = Color(0xff008000);
        myicon = Icons.arrow_upward;
        iconcolor = Color(0xff008000);
      });
    } else {
      setState(() {
        myicon = Icons.arrow_downward;
        icon_text = Color(0xffFF0000);
        iconcolor = Color(0xffFF0000);
      });
    }
  }

  double getrandom() {
    int num = Random().nextInt(10);
    List<dynamic> addnum = [
      0.10,
      -0.10,
      0.05,
      -.05,
      0.15,
      -.10,
      0.20,
      -.05,
      0.10,
      -.05,
    ];
    return addnum[num];
  }

  void setstatesws(String onorof) {
    setState(() {
      if (onorof == 'START') {
        start_or_stop = 'STOP';
      } else {
        start_or_stop = 'START';
      }
    });
  }

  String changeprice() {
    if (startstop == true) {
      _timer = new Timer(Duration(milliseconds: totatltime), () {
        totatltime = 1800;
        if (startstop == true) {
          setState(() {
            int news = Random().nextInt(10);
            switch (news) {
              case 0:
                add = add + getrandom();
                updownprice = add - startprice;
                changecolor(updownprice);
                price = add;

                break;
              case 1:
                add = add + getrandom();

                updownprice = add - startprice;
                changecolor(updownprice);
                price = add;
                break;
              case 2:
                add = add + 0.30;

                updownprice = add - startprice;
                changecolor(updownprice);
                price = add;
                break;
              case 3:
                add = add - .40;

                updownprice = add - startprice;
                changecolor(updownprice);
                price = add;
                break;
              case 4:
                add = add + getrandom();

                updownprice = add - startprice;
                changecolor(updownprice);
                price = add;
                break;
              case 5:
                add = add - .40;

                updownprice = add - startprice;
                changecolor(updownprice);
                price = add;
                break;
              case 6:
                add = add + getrandom();

                updownprice = add - startprice;
                changecolor(updownprice);
                price = add;
                break;
              case 7:
                add = add + getrandom();

                updownprice = add - startprice;
                changecolor(updownprice);
                price = add;
                break;
              case 8:
                add = add + getrandom();

                updownprice = add - startprice;
                changecolor(updownprice);
                price = add;
                break;
              case 9:
                add = add + 0.30;

                updownprice = add - startprice;
                changecolor(updownprice);
                price = add;
                break;
            }
            if (high < price) {
              high = price;
            } else if (low > price) {
              low = price;
            }
            changeprice();
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      drawer: Drawer(
        child: SafeArea(
          child: new Container(
            decoration: BoxDecoration(
                color: Color(0xff1B1D38),
                border: Border.all(
                  color: Colors.white,
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Divider(
                  color: Colors.white,
                  height: 2,
                ),
                SizedBox(height: 20,width: 20,),
                Center(
                  child: Text(
                    'PORTFOLIO',
                    style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'Roboto',
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(height: 20,width: 20,),
                Divider(
                  color: Colors.white,
                  height: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'ACCOUNT',
                    style: TextStyle(
                      color: Color(0xff666B93),
                      fontFamily: 'Roboto',
                      fontSize:20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    Text(
                      'Bank Balance: \n' + userwealth.toStringAsFixed(2),
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    Text(
                      'Shares owned: \n' + sharesbought.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: new AppBar(
        title: new Text(
          'VIRTUAL TRADE',
          style: TextStyle(fontFamily: "OpenSans", fontWeight: FontWeight.w100),
        ),
        backgroundColor: Color(0XFF1B1D38),
        elevation: 0.0,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    if (start_or_stop == 'START') {
                      setstatesws('START');
                      numberofshares(0);
                      startstop = true;
                      changeprice();
                    } else if (start_or_stop == 'STOP') {
                      startstop = false;
                      setstatesws('STOP');
                    }
                  },
                  child: new Text(
                    '$start_or_stop',
                    style: new TextStyle(
                        color: Color(0xff2B76C6),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "OpenSans"),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Color(0xff26345D)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Color(0XFF1B1D38),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                color: Color(0XFF262A48),
                border: Border.all(
                  color: Color(0xff26345D),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "TATA MOTORS",
                          style: new TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 30,
                              color: Color(0xff666B93),
                              fontFamily: "Roboto"),
                        ),
                        IconButton(icon:Icon(Icons.add_box_rounded,color: Colors.red,), onPressed:(){})
                      ],
                    ),
                  ),
                  Expanded(
                    child: Wrap(children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              '₹' + price.toStringAsFixed(2),
                              style: new TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Roboto",
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                myicon,
                                color: iconcolor,
                              ),
                              iconSize: 30,
                            ),
                            Baseline(
                              baseline: 30,
                              baselineType: TextBaseline.alphabetic,
                              child: Text(
                                updownprice.toStringAsFixed(2),
                                style: new TextStyle(
                                  color: icon_text,
                                  fontFamily: 'Roboto',
                                  fontSize: 25,
                                ),
                              ),
                            )
                          ]),
                    ]),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                'Low',
                                style: TextStyle(
                                  color: Color(0xff2B76C6),
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                low.toStringAsFixed(2),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'High',
                                style: TextStyle(
                                  color: Color(0xff2B76C6),
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                high.toStringAsFixed(2),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 2.5,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0XFF262A48),
                border: Border.all(
                  color: Color(0xff26345D),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Flexible(
                    flex: 1,
                    child: Text(
                      'BUY NOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                totalnumofshare =
                                    (number_of_shares / 3.4).toInt();
                              });
                            },
                            child: Text(
                              (number_of_shares / 3.4).toStringAsFixed(0),
                              style: TextStyle(
                                color: Color(0xff2B76C6),
                                fontFamily: 'OpenSans',
                                fontSize: 20,
                              ),
                            ),
                            shape: Border.all(
                              color: const Color(0xff2B76C6),
                            ),
                            minWidth: MediaQuery.of(context).size.width / 9,
                          ),
                        ),
                        Container(
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                totalnumofshare =
                                    (number_of_shares / 2.5).toInt();
                              });
                            },
                            child: Text(
                              (number_of_shares / 2.5).toStringAsFixed(0),
                              style: TextStyle(
                                color: Color(0xff2B76C6),
                                fontFamily: 'OpenSans',
                                fontSize: 20,
                              ),
                            ),
                            minWidth: MediaQuery.of(context).size.width / 9.1,
                            shape: Border.all(
                              color: const Color(0xff2B76C6),
                            ),
                          ),
                        ),
                        Container(
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                totalnumofshare =
                                    (number_of_shares / 1.4).toInt();
                              });
                            },
                            child: Text(
                              (number_of_shares / 1.4).toStringAsFixed(0),
                              style: TextStyle(
                                color: Color(0xff2B76C6),
                                fontFamily: 'OpenSans',
                                fontSize: 20,
                              ),
                            ),
                            minWidth: MediaQuery.of(context).size.width / 9.1,
                            shape: Border.all(
                              color: const Color(0xff2B76C6),
                            ),
                          ),
                        ),
                        Container(
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                totalnumofshare = (sharesbought).toInt();
                              });
                            },
                            child: Text(
                              (sharesbought).toStringAsFixed(0),
                              style: TextStyle(
                                color: Color(0xff2B76C6),
                                fontFamily: 'OpenSans',
                                fontSize: 20,
                              ),
                            ),
                            minWidth: MediaQuery.of(context).size.width / 9.1,
                            shape: Border.all(
                              color: const Color(0xff2B76C6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MaterialButton(
                          onPressed: () {
                            if (totalnumofshare > 1) {
                              setState(() {
                                totalnumofshare--;
                              });
                            }
                          },
                          child: Icon(
                            Icons.expand_more,
                            color: Colors.white,
                            size: 50,
                          ),
                          color: Color(0xffFF0000),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                color: Color(0xffFF0000),
                              )),
                        ),
                        Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width / 2.5,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Center(
                            child: Text(
                              totalnumofshare.toString(),
                              style: TextStyle(
                                color: Color(0xff1B1D38),
                                fontFamily: 'OpenSans',
                                wordSpacing: 1.5,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              totalnumofshare++;
                            });
                          },
                          color: Color(0xff008000),
                          child: Icon(
                            Icons.expand_less,
                            color: Colors.white,
                            size: 50,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                color: Color(0xff008000),
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                      Widget>[
                    FlatButton(
                      onPressed: () {
                        if (startstop == true) {
                          if (price * totalnumofshare <= userwealth) {
                            if (totalnumofshare > 0) {
                              setState(() {
                                userwealth =
                                    userwealth - (price * totalnumofshare);
                                sharesbought = sharesbought + totalnumofshare;
                                number_of_shares = (userwealth / price).toInt();
                                print(sharesbought);
                                _showSnackBar();
                              });
                            } else {
                              setState(() {
                                snackBar = new SnackBar(
                                    duration: Duration(milliseconds: 900),
                                    content: Text(
                                      'Number of shares must be greater than 0',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'OpenSans',
                                      ),
                                    ),
                                    backgroundColor: Color(0xff2B76C6));

                                _scaffoldKey.currentState.showSnackBar(snackBar);
                              });
                            }
                          } else {
                            setState(() {
                              snackBar = new SnackBar(
                                  duration: Duration(milliseconds: 900),
                                  content: Text(
                                    'Cannot buy because of low Bank Balance',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'OpenSans',
                                    ),
                                  ),
                                  backgroundColor: Color(0xff2B76C6));

                              _scaffoldKey.currentState.showSnackBar(snackBar);
                            });
                          }
                        } else {
                          setState(() {
                            snackBar = new SnackBar(
                                duration: Duration(milliseconds: 900),
                                content: Text(
                                  'Press Start button to Buy',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OpenSans',
                                  ),
                                ),
                                backgroundColor: Color(0xff2B76C6));

                            _scaffoldKey.currentState.showSnackBar(snackBar);
                          });
                        }
                      },
                      child: new Text(
                        '  BUY  ',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            fontFamily: "Roboto"),
                      ),
                      padding: EdgeInsets.all(10),
                      color: Color(0xff623AB6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Color(0xff26345D)),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FlatButton(
                      onPressed: () {
                        if (startstop == true) {
                          if (totalnumofshare <= sharesbought) {
                            if (totalnumofshare > 0) {
                              setState(() {
                                userwealth =
                                    userwealth + (totalnumofshare * price);
                                sharesbought = sharesbought - totalnumofshare;
                                number_of_shares = (userwealth / price).toInt();
                                print(sharesbought);
                                _showSnackBarsell();
                              });
                            } else {
                              setState(() {
                                snackBar = new SnackBar(
                                    duration: Duration(milliseconds: 900),
                                    content: Text(
                                      'Number of shares must be greater than 0',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'OpenSans',
                                      ),
                                    ),
                                    backgroundColor: Color(0xff2B76C6));

                                _scaffoldKey.currentState.showSnackBar(snackBar);
                              });
                            }
                          } else {
                            setState(() {
                              snackBar = new SnackBar(
                                  duration: Duration(milliseconds: 900),
                                  content: Text(
                                    'Cannot sell more stocks than you own',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'OpenSans',
                                    ),
                                  ),
                                  backgroundColor: Color(0xff2B76C6));

                              _scaffoldKey.currentState.showSnackBar(snackBar);
                            });
                          }
                        } else {
                          setState(() {
                            snackBar = new SnackBar(
                                duration: Duration(milliseconds: 900),
                                content: Text(
                                  'Press Start button to Sell',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OpenSans',
                                  ),
                                ),
                                backgroundColor: Color(0xff2B76C6));

                            _scaffoldKey.currentState.showSnackBar(snackBar);
                          });
                        }
                      },
                      child: new Text(
                        '  SELL  ',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            fontFamily: "Roboto"),
                      ),
                      padding: EdgeInsets.all(10),
                      color: Color(0xff623AB6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Color(0xff26345D)),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width * .95,
              height: 50,
              splashColor: Color(0xff1B1D38),
              child: new Text(
                "BANK : ₹" + userwealth.toStringAsFixed(2),
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                  fontFamily: 'OpenSans',
                ),
              ),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.white,
                  )),
            ),
            Padding(padding: EdgeInsets.only(bottom: 1))
          ],
        ),
      ),
    );
  }
}
