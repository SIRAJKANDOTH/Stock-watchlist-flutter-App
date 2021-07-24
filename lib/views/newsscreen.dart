import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mystockapp/helper/fetchnews.dart';
import 'package:mystockapp/helper/mydata.dart';
import 'package:mystockapp/models/articlemodel.dart';
import 'package:mystockapp/models/categorymodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mystockapp/views/article_view.dart';

class News extends StatefulWidget {


  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<CategoryModel> catogories=[];
  List<ArticleModel> articles=[];
  bool _loading=true;
  @override
  void initState() {
    // TODO: implement initState
    catogories=getCategories();
    getNewsList();
  }
  getNewsList() async{
    FetchNews articleinstance =new FetchNews();
    await articleinstance.getNewsList();
    articles =articleinstance.newslist;
    setState(() {
      _loading=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
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
            SizedBox(height: 6, width:MediaQuery.of(context).size.width,child: ColoredBox(color:Colors.blue),            ),
            SizedBox(height: 10,)

          ],
        ),

      ),
      body:_loading ? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      ):SingleChildScrollView(
                                                           //newstile//
        child: Container(
          child: Column(
            children: [
              Container(
                height:70.0,
                //height:120.0,
                child: ListView.builder(
                    scrollDirection:Axis.horizontal,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: catogories.length,
                    itemBuilder: (context,index){
                          return CategoryTile(
                            categoryName: catogories[index].categoryName,
                            imageUrl: catogories[index].imageUrl,
                          );

                    }),
              ),
                                                                 //blogtile//
              Container(
                margin: EdgeInsets.only(top:10),

                child: ListView.builder(

                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: articles.length,
                    itemBuilder: (context,index){
                      return BlogTile(imageUrl: articles[index].urlToImage, title: articles[index].title, description: articles[index].description,blogurl: articles[index].url,);

                    }),
              ),
            ],
          ),
        ),
      ),

    );

  }
}
class CategoryTile extends StatelessWidget {
 // const CategoryTile({Key key}) : super(key: key);
  final String imageUrl;
  final String categoryName;
  CategoryTile({this.imageUrl,this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        height: 80,
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: CachedNetworkImage(imageUrl: imageUrl,height: 60,width: 120,fit: BoxFit.cover,)),
            Container(
              height: 80,width: 120,
              alignment: Alignment.center,
              child: Text(categoryName,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17
              ),),
            ),

          ],
        ),
      ),
    );
  }
}
 class BlogTile extends StatelessWidget {
   //const BlogTile({Key? key}) : super(key: key);
  String imageUrl,title,description,blogurl;
  BlogTile({@required this.imageUrl,@required this.title,@required this.description,this.blogurl});
   @override
   Widget build(BuildContext context) {
     return   GestureDetector(
       onTap: (){
         Navigator.push(context,MaterialPageRoute(builder: (context)=>ArticleView(blogurl: blogurl,)));
       },
       child: Container(
                margin: EdgeInsets.only(bottom: 20.0),
               child: Column(
                 children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.network(imageUrl,)),
                    Text(title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 8,),
                    Text(description,style: TextStyle(color: Colors.grey))
                 ],
               ),
             ),
     );


     
   }
 }


 

