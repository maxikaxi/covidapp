import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class T2_Search extends StatefulWidget {
  T2_Search({Key? key}) : super(key: key);
  @override
  _T2_SearchState createState() => _T2_SearchState();
}

class _T2_SearchState extends State<T2_Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF313237),

      ///
      /// Appbar
      ///
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
        ),
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF313237),
        title: Row(
          children: <Widget>[
            Container(
              height: 45.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.black12,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        color: Colors.white70,
                      ),
                      hintText: "Suche",
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle:
                          TextStyle(color: Colors.white70, fontSize: 17.0)),
                ),
              ),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          Icon(
            Icons.keyboard_arrow_up,
            color: Colors.white70,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white70,
            ),
          )
        ],
      ),

      ///
      /// Body
      ///
      body: Column(
        children: <Widget>[
          ///
          /// Box under appbar
          ///
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            child: Container(
              height: 43.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.repeated,
                    colors: [Color(0xFF15EDED), Color(0xFF029CF5)]),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      " Emotionaler Zustand",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 15.5),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(right : 14.0),
                    child:Text(
                    "Datum",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 15.5),
                  ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 300,


            child: Text(

              "Hallo",
              style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 15.5),
            ),
          ),
          line(),

          // card(
          //   img:"https://cdn.pixabay.com/photo/2016/09/01/08/24/smiley-1635449_960_720.png",
          //   name: "",
          //   price: "24/7/2021",
          //   increment: "",
          //   price2: "Abgeschlossen",
          //   increment2: "",
          // ),
          // line(),
          // card(
          //   img:
          //       "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/2000px-Ethereum_logo_2014.svg.png",
          //   name: "ETH",
          //   price: "\$1000.09",
          //   increment: "+7.72%",
          //   price2: "\$121.5B",
          //   increment2: "+7.72%",
          // ),
          // line(),
          // card(
          //   img:
          //       "http://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/1024/Tezos-Pre-Launch-XTZ-icon.png",
          //   name: "XTZ",
          //   price: "\$1000.09",
          //   increment: "+7.72%",
          //   price2: "\$121.5B",
          //   increment2: "+7.72%",
          // ),
          // line(),
          // card(
          //   img:
          //       "https://cdn4.iconfinder.com/data/icons/crypto-currency-and-coin-2/256/neo_neocoin-512.png",
          //   name: "NEO",
          //   price: "\$1000.09",
          //   increment: "+7.72%",
          //   price2: "\$121.5B",
          //   increment2: "+7.72%",
          // ),
          // line(),
          // card(
          //   img:
          //       "http://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/1024/Ark-icon.png",
          //   name: "ARK",
          //   price: "\$1000.09",
          //   increment: "+7.72%",
          //   price2: "\$121.5B",
          //   increment2: "+7.72%",
          // ),
          // line(),
          // card(
          //   img:
          //       "https://www.cryptocurrencer.com/wp-content/uploads/2018/01/CRYPTOCURRENCY-bitcoin-logo.png",
          //   name: "GIC",
          //   price: "\$1000.09",
          //   increment: "+7.72%",
          //   price2: "\$121.5B",
          //   increment2: "+7.72%",
          // ),
          // line(),
        ],
      ),
    );
  }
}

class card extends StatelessWidget {
  @override
  String img, name, price, increment, price2, increment2;
  card(
      {required this.img,
      required this.name,
      required this.price,
      required this.increment,
      required this.price2,
      required this.increment2});
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 12.0, right: 15.0, top: 10.0, bottom: 10.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.network(
                    img,
                    height: 22.0,
                    width: 22.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      name,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    price,
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(children: <Widget>[
                    Text(
                      increment,
                      style: TextStyle(color: Colors.white),
                    ),
//                      Icon(Icons.keyboard_arrow_down,color: Colors.red,size: 15.0,)
                  ]),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    price2,
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(children: <Widget>[
                    Text(
                      increment2,
                      style: TextStyle(color: Colors.white),
                    ),
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget line() {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
    child: Container(
      height: 0.08,
      width: double.infinity,
      color: Colors.orangeAccent,
    ),
  );
}
