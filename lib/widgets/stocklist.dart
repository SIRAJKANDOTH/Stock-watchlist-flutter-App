import 'package:flutter/material.dart';
import 'package:mystockapp/stockclass.dart';


class StockList extends StatelessWidget {


  List<Stock> stocks;

  StockList({this.stocks});


  @override
  Widget build(BuildContext context) {

    return ListView.separated(
    separatorBuilder:(context,index){
      return Divider(color: Colors.deepOrange,);
    } ,
    itemCount:stocks.length,
    itemBuilder: (context,index) {
      var thisstock= stocks[index];
      return ListTile(

        contentPadding: EdgeInsets.all(4),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${thisstock.symbol}',style: TextStyle(color: Colors.white,fontSize: 20),),
            Text('${thisstock.company}',style: TextStyle(color: Colors.blueGrey,fontSize: 15,fontStyle: FontStyle.italic),)
          ],
        ),
        trailing: Column(
          children: [
            Text('\₹${thisstock.price}',style: TextStyle(color: Colors.white,fontSize: 18),),
            Container(
              height: 30,
              width: 75,
              child: Text("-1.5",style: TextStyle(color: Colors.white),),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.red
              ),
            )

          ],
        ),
      );
    });
  }
}
