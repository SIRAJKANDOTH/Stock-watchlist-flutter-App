import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mystockapp/screens/prediction.dart';
import 'package:mystockapp/views/screenerwebview.dart';






class Addtolist extends SearchDelegate<String> {
  final listofstocks = [
    'Steel Authority of India Limited',
    'Jaiprakash Associates Limited',
    'Alok Industries Limited',
    'Vodafone Idea Limited',
    'NBCC (India) Limited',
    'Future Consumer Limited',
    'Yes Bank Limited',
    'Jaiprakash Power Ventures Limited',
    'Reliance Communications Limited',
    'Punjab National Bank',
    'GTL Infrastructure Limited',
    'RattanIndia Power Limited',
    'Reliance Power Limited',
    'BIOGEN PHARMACHEM INDUSTRIES L',
    'The Tata Power Company Limited',
    'Reliance Power Limited',
    'Coal India Limited',
    'MPS Infotecnics Limited',
    'Vodafone Idea Limited',
    'Bharat Heavy Electricals Limited',
    'NHPC Limited',
    'Indiabulls Housing Finance Limited',
    'Suzlon Energy Limited',
    'The Lakshmi Vilas Bank Limited',
    'Bank of Baroda',
    'Tata Motors Limited',
    'Ashok Leyland Limited',
    'Marksans Pharma Limited',
    'Adani Power Limited',
    'TV18 Broadcast Limited',
    'Hathway Cable and Datacom Limited',
    'Sintex Industries Limited',

    'NHPC Limited',
    'State Bank of India',
    'Reliance Infrastructure Limited',

    'IDFC First Bank Limited',
    'Jaiprakash Associates Limited',
    'GAIL (India) Limited',
    'NCC Limited',
    'Alok Industries Limited',
    'National Aluminium Company Limited',
    'VISESH INFOTECNICS LTD.',
    'ITC Limited',
    'The Bombay Dyeing and Manufacturing Company Limited',
    'Vikas Proppant & Granite Limited',
    'Indian Overseas Bank',


    'Coal India Limited',
    'MPS Infotecnics Limited',
    'Bharat Heavy Electricals Limited',
    'NHPC Limited',
    'Indiabulls Housing Finance Limited',
    'Suzlon Energy Limited',
    'The Lakshmi Vilas Bank Limited',
    'Bank of Baroda',
    'Tata Motors Limited',
    'Ashok Leyland Limited',
    'Marksans Pharma Limited',
    'Adani Power Limited',
    'TV18 Broadcast Limited',
    'Hathway Cable and Datacom Limited',
    'Sintex Industries Limited',
    'State Bank of India',
    'Reliance Infrastructure Limited',

    'IDFC First Bank Limited',

    'GAIL (India) Limited',
    'NCC Limited',

    'National Aluminium Company Limited',
    'VISESH INFOTECNICS LTD.',
    'ITC Limited',
    'The Bombay Dyeing and Manufacturing Company Limited',
    'Vikas Proppant & Granite Limited',
    'Indian Overseas Bank'
  ];

  final recentStocks = [
    'Steel Authority of India Limited',
    'Jaiprakash Associates Limited',
    'Alok Industries Limited',
    'Vodafone Idea Limited',
  ];

  @override
  List<Widget> buildActions(BuildContext context) => [
    IconButton(
      icon: Icon(Icons.clear),
      onPressed: () {
        if (query.isEmpty) {
          close(context, null);
        } else {
          query = '';
          showSuggestions(context);
        }
      },
    )
  ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: () => close(context, null),
  );

  @override
  List listofurls=['https://www.screener.in/company/SAIL/consolidated/',
    'https://www.screener.in/company/JPASSOCIAT/consolidated/',
    'https://www.screener.in/company/ALOKINDS/consolidated/',
    'https://www.screener.in/company/IDEA/consolidated/',
    'https://www.screener.in/company/NBCC/consolidated/',
    'https://www.screener.in/company/FCONSUMER/consolidated/',
    'https://www.screener.in/company/YESBANK/consolidated/',
    'https://www.screener.in/company/JPPOWER/consolidated/',
    'https://www.screener.in/company/RCOM/consolidated/',
    'https://www.screener.in/company/PNB/consolidated/',
    'https://www.screener.in/company/GTLINFRA/',
    'https://www.screener.in/company/RTNPOWER/consolidated/',
    'https://www.screener.in/company/RPOWER/consolidated/',
    'https://www.screener.in/company/531752/',
    'https://www.screener.in/company/TATAPOWER/consolidated/',
    "https://www.screener.in/company/COALINDIA/consolidated/",
    "https://www.screener.in/company/VISESHINFO/consolidated/",
    "https://www.screener.in/company/BHEL/consolidated/",
    "https://www.screener.in/company/NHPC/consolidated/",
    "https://www.screener.in/company/IBULHSGFIN/consolidated/",
    "https://www.screener.in/company/SUZLON/consolidated/",
    "https://www.screener.in/company/LAKSHVILAS/",
    "https://www.screener.in/company/BANKBARODA/consolidated/",
    "https://www.screener.in/company/TATAMOTORS/consolidated/",
    "https://www.screener.in/company/ASHOKLEY/consolidated/",
    "https://www.screener.in/company/MARKSANS/consolidated/",
    "https://www.screener.in/company/ADANIPOWER/consolidated/",
    "https://www.screener.in/company/TV18BRDCST/consolidated/",
    "https://www.screener.in/company/HATHWAY/consolidated/",
    "https://www.screener.in/company/SINTEX/consolidated/",
    "https://www.screener.in/company/SBIN/consolidated/",
    "https://www.screener.in/company/RELINFRA/consolidated/",
    "https://www.screener.in/company/IDFCFIRSTB/",
    "https://www.screener.in/company/GAIL/consolidated/",
    "https://www.screener.in/company/NCC/consolidated/",
    "https://www.screener.in/company/NATIONALUM/consolidated/",
    "https://www.screener.in/company/VISESHINFO/consolidated/",
    "https://www.screener.in/company/ITC/consolidated/",
    "https://www.screener.in/company/BOMDYEING/consolidated/",
    "https://www.screener.in/company/VIKASPROP/",
    "https://www.screener.in/company/IOB/",
    "https://www.screener.in/company/INFIBEAM/",
    "https://www.screener.in/company/HUDCO/consolidated/",
    "https://www.screener.in/company/TRIDENT/consolidated/",
    "https://www.screener.in/company/NMDC/consolidated/",
    "https://www.screener.in/company/ONGC/consolidated/",
    "https://www.screener.in/company/VAKRANGEE/consolidated/",
    "https://www.screener.in/company/ADANIPORTS/consolidated/",
    "https://www.screener.in/company/TATASTEEL/consolidated/",
    "https://www.screener.in/company/UNIONBANK/consolidated/",
    "https://www.screener.in/company/JINDALSTEL/consolidated/",
    "https://www.screener.in/company/GREENPOWER/consolidated/",
    "https://www.screener.in/company/SANWARIA/",
    "https://www.screener.in/company/BCG/consolidated/",
    "https://www.screener.in/company/RELCAPITAL/consolidated/",
    "https://www.screener.in/company/POWERGRID/consolidated/",
    "https://www.screener.in/company/IRFC/",
    "https://www.screener.in/company/NETWORK18/consolidated/",
    "https://www.screener.in/company/TATASTLBSL/consolidated/",
    "https://www.screener.in/company/IOC/consolidated/",
    "https://www.screener.in/company/HFCL/consolidated/",
    "https://www.screener.in/company/HINDCOPPER/",
    "https://www.screener.in/company/BAJAJHIND/consolidated/",
    "https://www.screener.in/company/DEN/consolidated/",
    "https://www.screener.in/company/NTPC/consolidated/",
    "https://www.screener.in/company/IBREALEST/consolidated/",
    "https://www.screener.in/company/FEDERALBNK/consolidated/",
    "https://www.screener.in/company/SOUTHBANK/",
    "https://www.screener.in/company/L&TFH/consolidated/",
    "https://www.screener.in/company/509051/",
    "https://www.screener.in/company/FCSSOFT/consolidated/",
    "https://www.screener.in/company/SPTL/consolidated/",
    "https://www.screener.in/company/KELLTONTEC/consolidated/",
    "https://www.screener.in/company/DLF/consolidated/",
    "https://www.screener.in/company/FRETAIL/consolidated/",
    "https://www.screener.in/company/MOTHERSUMI/consolidated/",
    "https://www.screener.in/company/IRB/consolidated/",
    "https://www.screener.in/company/JSWSTEEL/consolidated/",
    "https://www.screener.in/company/GAYAPROJ/consolidated/",
    "https://www.screener.in/company/CENTRUM/consolidated/",
    "https://www.screener.in/company/ZEEL/consolidated/",
    "https://www.screener.in/company/DCBBANK/",
    "https://www.screener.in/company/JISLJALEQS/consolidated/",
    "https://www.screener.in/company/URJA/consolidated/",
    "https://www.screener.in/company/GMRINFRA/consolidated/",
    "https://www.screener.in/company/GMDCLTD/consolidated/",
    "https://www.screener.in/company/JMTAUTOLTD/",
    "https://www.screener.in/company/GAMMNINFRA/consolidated/",
    "https://www.screener.in/company/VIKASLIFE/",
    "https://www.screener.in/company/RVNL/consolidated/",
    "https://www.screener.in/company/HINDALCO/consolidated/",
    "https://www.screener.in/company/KSERASERA/consolidated/",
    "https://www.screener.in/company/MAHABANK/consolidated/",
    "https://www.screener.in/company/SANGHIIND/",
    "https://www.screener.in/company/JAICORPLTD/consolidated/",
    "https://www.screener.in/company/JPINFRATEC/consolidated/",
    "https://www.screener.in/company/3IINFOTECH/consolidated/",
    "https://www.screener.in/company/NECLIFE/consolidated/",
    "https://www.screener.in/company/ICICIBANK/consolidated/",
    "https://www.screener.in/company/CADILAHC/consolidated/",
    "https://www.screener.in/company/SITINET/consolidated/",
    "https://www.screener.in/company/ZEEMEDIA/consolidated/",
    "https://www.screener.in/company/BEL/consolidated/",
    "https://www.screener.in/company/GREAVESCOT/consolidated/",
    "https://www.screener.in/company/CANBK/consolidated/",
    "https://www.screener.in/company/IDBI/consolidated/",
    "https://www.screener.in/company/SUBEXLTD/consolidated/",
    "https://www.screener.in/company/LSIL/",
    "https://www.screener.in/company/RHFL/",
    "https://www.screener.in/company/BRFL/consolidated/",
    "https://www.screener.in/company/WABAG/consolidated/",
    "https://www.screener.in/company/HSCL/consolidated/",
    "https://www.screener.in/company/DISHTV/consolidated/",
    "https://www.screener.in/company/UJAAS/",
    "https://www.screener.in/company/LICHSGFIN/consolidated/",
    "https://www.screener.in/company/RBLBANK/",
    "https://www.screener.in/company/UTTAMSTL/consolidated/",
    "https://www.screener.in/company/VRLLOG/",
    "https://www.screener.in/company/BHARTIARTL/consolidated/",
    "https://www.screener.in/company/ASHOKA/consolidated/",
    "https://www.screener.in/company/539526/consolidated/",
    "https://www.screener.in/company/id/1272893/",
    "https://www.screener.in/company/UNITECH/consolidated/",
    "https://www.screener.in/company/KGL/consolidated/",
    "https://www.screener.in/company/HCC/consolidated/",
    "https://www.screener.in/company/INDSWFTLAB/consolidated/",
    "https://www.screener.in/company/JSL/consolidated/",
    "https://www.screener.in/company/UJJIVANSFB/",
    "https://www.screener.in/company/UCOBANK/",
    "https://www.screener.in/company/RNAVAL/consolidated/",
    "https://www.screener.in/company/RADIOCITY/",
    "https://www.screener.in/company/PETRONET/consolidated/",
    "https://www.screener.in/company/TATACOFFEE/consolidated/",
    "https://www.screener.in/company/CUB/",
    "https://www.screener.in/company/AUROPHARMA/consolidated/",
    "https://www.screener.in/company/524470/",
    "https://www.screener.in/company/CENTRALBK/consolidated/",
    "https://www.screener.in/company/JSWENERGY/consolidated/",
    "https://www.screener.in/company/RELIANCE/consolidated/",
    "https://www.screener.in/company/MMTC/consolidated/",
    "https://www.screener.in/company/NLCINDIA/consolidated/",
    "https://www.screener.in/company/FSL/consolidated/",
    "https://www.screener.in/company/INFY/consolidated/",
    "https://www.screener.in/company/VIVIDHA/",
    "https://www.screener.in/company/MRPL/consolidated/",
    "https://www.screener.in/company/SAKUMA/consolidated/",
    "https://www.screener.in/company/HCL-INSYS/consolidated/",
    "https://www.screener.in/company/M&MFIN/consolidated/",
    "https://www.screener.in/company/KMSUGAR/consolidated/",
    "https://www.screener.in/company/WIPRO/consolidated/",
    "https://www.screener.in/company/PFC/consolidated/",
    "https://www.screener.in/company/MERCATOR/consolidated/",
    "https://www.screener.in/company/MEGH/consolidated/",
    "https://www.screener.in/company/WELSPUNIND/consolidated/",
    "https://www.screener.in/company/TIRUMALCHM/consolidated/",
    "https://www.screener.in/company/ADANIENT/consolidated/",
    "https://www.screener.in/company/HINDPETRO/consolidated/",
    "https://www.screener.in/company/MOREPENLAB/consolidated/",
    "https://www.screener.in/company/BSOFT/consolidated/",
    "https://www.screener.in/company/RECLTD/consolidated/",
    "https://www.screener.in/company/RANASUG/",
    "https://www.screener.in/company/TECHM/consolidated/",
    "https://www.screener.in/company/GLENMARK/consolidated/",
    "https://www.screener.in/company/CEREBRAINT/consolidated/",
    "https://www.screener.in/company/PATELENG/consolidated/",
    "https://www.screener.in/company/AXISBANK/consolidated/",
    "https://www.screener.in/company/GPPL/consolidated/",
    "https://www.screener.in/company/JUMPNET/",
    "https://www.screener.in/company/HCLTECH/consolidated/",
    "https://www.screener.in/company/DWARKESH/",
    "https://www.screener.in/company/IFCI/consolidated/",
    "https://www.screener.in/company/TNPETRO/consolidated/",
    "https://www.screener.in/company/APOLLOTYRE/consolidated/",
    "https://www.screener.in/company/BHARATFORG/consolidated/",
    "https://www.screener.in/company/500223/",
    "https://www.screener.in/company/PFS/consolidated/",
    "https://www.screener.in/company/NFL/consolidated/",
    "https://www.screener.in/company/FILATEX/",
    "https://www.screener.in/company/GIPCL/",
    "https://www.screener.in/company/PILITA/",
    "https://www.screener.in/company/534741/",
    "https://www.screener.in/company/ITDCEM/consolidated/",
    "https://www.screener.in/company/DEEPAKFERT/consolidated/",
    "https://www.screener.in/company/BFUTILITIE/",
    "https://www.screener.in/company/XCHANGING/consolidated/",
    "https://www.screener.in/company/FEL/consolidated/",
    "https://www.screener.in/company/BALLARPUR/",
    "https://www.screener.in/company/CENTEXT/",
    "https://www.screener.in/company/NBVENTURES/consolidated/",
    "https://www.screener.in/company/SUNPHARMA/consolidated/",
    "https://www.screener.in/company/CHAMBLFERT/consolidated/",
    "https://www.screener.in/company/PRAKASH/",
    "https://www.screener.in/company/MIRCELECTR/",
    "https://www.screener.in/company/BURGERKING/",
    "https://www.screener.in/company/BPCL/consolidated/",
    "https://www.screener.in/company/SREINFRA/consolidated/",
    "https://www.screener.in/company/BANKINDIA/consolidated/",
    "https://www.screener.in/company/BAJFINANCE/consolidated/",
    "https://www.screener.in/company/EASEMYTRIP/",
    "https://www.screener.in/company/TTML/",
    "https://www.screener.in/company/HDFCBANK/consolidated/",
    "https://www.screener.in/company/ASTERDM/consolidated/",
    "https://www.screener.in/company/AUBANK/",
    "https://www.screener.in/company/RAILTEL/consolidated/",
    "https://www.screener.in/company/RIIL/consolidated/",
    "https://www.screener.in/company/CIPLA/consolidated/",
    "https://www.screener.in/company/TCS/consolidated/",
    "https://www.screener.in/company/RAJRAYON/",
    "https://www.screener.in/company/CONFIPET/consolidated/",
    "https://www.screener.in/company/PEL/consolidated/",
    "https://www.screener.in/company/LGBBROSLTD/consolidated/",
    "https://www.screener.in/company/ROLTA/consolidated/",
    "https://www.screener.in/company/BIOCON/consolidated/",
    "https://www.screener.in/company/MANAPPURAM/consolidated/",
    "https://www.screener.in/company/EDELWEISS/consolidated/",
    "https://www.screener.in/company/HINDZINC/",
    "https://www.screener.in/company/JINDALSAW/consolidated/",
    "https://www.screener.in/company/IGL/consolidated/",
    "https://www.screener.in/company/SNOWMAN/",
    "https://www.screener.in/company/ZEELEARN/consolidated/",
    "https://www.screener.in/company/SPICEJET/consolidated/",
    "https://www.screener.in/company/RELIGARE/consolidated/",
    "https://www.screener.in/company/BHARATFORG/consolidated/",
    "https://www.screener.in/company/TEXRAIL/consolidated/",
    "https://www.screener.in/company/MAZDOCK/consolidated/",
    "https://www.screener.in/company/SKIPPER/",
    "https://www.screener.in/company/CANFINHOME/",
    "https://www.screener.in/company/BANDHANBNK/",
    "https://www.screener.in/company/LAURUSLABS/consolidated/",
    "https://www.screener.in/company/CHOLAFIN/consolidated/",
    "https://www.screener.in/company/RSSOFTWARE/consolidated/",
    "https://www.screener.in/company/RICOAUTO/consolidated/",
    "https://www.screener.in/company/FORTIS/consolidated/",
    "https://www.screener.in/company/511116/",
    "https://www.screener.in/company/GODREJCP/consolidated/",
    "https://www.screener.in/company/ENGINERSIN/consolidated/",
    "https://www.screener.in/company/DBREALTY/consolidated/",
    "https://www.screener.in/company/USHAMART/consolidated/",
    "https://www.screener.in/company/TFCILTD/",
    "https://www.screener.in/company/PTC/consolidated/",
    "https://www.screener.in/company/524640/",
    "https://www.screener.in/company/505523/",
    "https://www.screener.in/company/LXCHEM/consolidated/",
    "https://www.screener.in/company/IDFC/consolidated/",
    "https://www.screener.in/company/INDUSINDBK/consolidated/",
    "https://www.screener.in/company/J&KBANK/consolidated/",
    "https://www.screener.in/company/KALYANKJIL/consolidated/",
    "https://www.screener.in/company/UPL/consolidated/",
    "https://www.screener.in/company/INDHOTEL/consolidated/",
    "https://www.screener.in/company/526173/consolidated/"




  ];
  Widget buildResults(BuildContext context,) =>Prediction();

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recentStocks
        : listofstocks.where((city) {
      final cityLower = city.toLowerCase();
      final queryLower = query.toLowerCase();

      return cityLower.startsWith(queryLower);
    }).toList();

    return buildSuggestionsSuccess(suggestions);
  }

  Widget buildSuggestionsSuccess(List<String> suggestions) => ListView.builder(
    itemCount: suggestions.length,
    itemBuilder: (context, index) {
      final suggestion = suggestions[index];
      final queryText = suggestion.substring(0, query.length);
      final remainingText = suggestion.substring(query.length);

      return ListTile(
        onTap: () {
          query = suggestion;
          // print('heloooooooooooooooooooo');
          print(listofstocks.indexOf(suggestion));
          print("added to list");



        },
        leading: Icon(Icons.location_city),
        // title: Text(suggestion),
        title: RichText(
          text: TextSpan(
            text: queryText,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            children: [
              TextSpan(
                text: remainingText,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
