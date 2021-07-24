
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_scraper/web_scraper.dart';



class WebScraperclass extends StatefulWidget {
  String symbol;
  @override
  _WebScraperclassState createState() => _WebScraperclassState();
}

class _WebScraperclassState extends State<WebScraperclass> {
  // initialize WebScraper by passing base url of website
  final webScraper = WebScraper('https://www.screener.in');
  String symbol;
  String price;

  // Response of getElement is always List<Map<String, dynamic>>
  List<Map<String, dynamic>> stocl_list;
  List<Map<String, dynamic>> stock_price;

  void fetchProducts() async {
    // Loads web page and downloads into local state of library
    if (await webScraper
        .loadWebPage('/company/$symbol/consolidated/')) {
      setState(() {
        // getElement takes the address of html tag/element and attributes you want to scrap from website
        // it will return the attributes in the same order passed
        stocl_list = webScraper.getElement(
            '#top-ratios > li:nth-child(2) > span.nowrap.value > span', ['number']);
        //productDescriptions = webScraper.getElement(
        // 'div.thumbnail > div.caption > p.description', ['class']);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // Requesting to fetch before UI drawing starts
    fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Product Catalog'),
          ),
          body: SafeArea(
              child: stocl_list == null
                  ? Center(
                child:
                CircularProgressIndicator(), // Loads Circular Loading Animation
              )
                  : ListView.builder(
                  itemCount: stocl_list.length,
                  itemBuilder: (BuildContext context, int index) {
                    // Attributes are in the form of List<Map<String, dynamic>>.
                    Map<String, dynamic> attributes =
                    stocl_list[index]['attributes'];
                    return ExpansionTile(
                      title: Text(attributes['number']),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                    stock_price[index]['number']),
                                margin: EdgeInsets.only(bottom: 10.0),
                              ),
                              InkWell(
                                onTap: () {
                                  // uses UI Launcher to launch in web browser & minor tweaks to generate url
                                  launch(webScraper.baseUrl +
                                      attributes['number']);
                                },
                                child: Text(
                                  'View Product',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  }))),
    );
  }
}



