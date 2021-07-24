class Stock{
   String symbol;
   String company;
   double price;
   Stock({this.symbol,this.company,this.price});

   String toString(){
     return "company : $company,"
            "symbol : $symbol,"
            "price : $price";
   }

  static List<Stock> Getall() {
      List<Stock> stocks = [];
      stocks.add(Stock(company: "Vodafone Idea Limited", symbol: "IDEA.NS", price: 8.80));
      stocks.add(Stock(company: "Punjab National bank", symbol: "PNB.NS", price: 40.7));
      stocks.add(Stock(company: "Tata Consultancy Ltd", symbol: "TCS", price: 3215));
      stocks.add(Stock(company: "Yes Bank Limited", symbol: "YESBANK", price: 13.00));
      stocks.add(Stock(company: "ITC limited", symbol: "ITC", price: 204));
      stocks.add(Stock(company: "Wipro Limited", symbol: "WIPRO.NS", price: 561));
      stocks.add(Stock(company: "Tata Motors Limited", symbol: "TATAMOTORS.NS", price: 309.55));
      stocks.add(Stock(company: "Trident Limited", symbol: "TRIDENT.NS", price: 17.95));
      stocks.add(Stock(company: "Tata Power company limited", symbol: "TATAPOWER.NS", price: 124.55));
      stocks.add(Stock(company: "TVS MOTORS CO", symbol: "TVSMOTOR", price: 617.25));
      //print(stocks);
      return stocks;
   }

}