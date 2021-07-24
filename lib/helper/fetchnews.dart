import 'dart:convert';

import 'package:mystockapp/models/articlemodel.dart';
import 'package:http/http.dart'as http;
class FetchNews{


  List<ArticleModel> newslist =[];
  Future<void> getNewsList()async{
    String url='https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=b43fc6df872e44cdb07ca005e14e6799';
    var response=await http.get(Uri.parse(url));
    var jsonData=jsonDecode(response.body);

    if(jsonData["status"]=="ok"){
      jsonData["articles"].forEach((element){
        if(element['urlToImage']!=null && element["description"]!=null){
          ArticleModel articlemodel= ArticleModel(
            title:element["title"],
              author:element["author"],
              description:element["description"],
              url:element["url"],
              urlToImage:element["urlToImage"],
          );
          newslist.add(articlemodel);

        }
      });


    }
  }

}

