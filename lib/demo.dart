import 'package:dev/firma_bilgileri.dart';
import 'package:dev/main.dart';
import 'package:flutter/material.dart';
import 'functions.dart';

void main() {
  runApp(MaterialApp(
      routes: {
        "/MyApp": (context) => MyApp(),
      },
      debugShowCheckedModeBanner: false, //Debug yazısı kaldırma
      home: MyApp()));
}

class RouteDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bilsoft',
        home: Scaffold(
          //Hexadecimal Renk
          backgroundColor: Color((0xF4F1F1).toInt() << 0).withOpacity(1.0),
          body: SafeArea(
            child: Column(
              children: [
                // ----->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  LOGO

                buildLogoWhite(),

                // ----->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ICONLAR

                Container(
                    color: Colors.white,
                    height: 75,
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // YATAYDA EŞİT ORTALAMA  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        
                        new FlatButton(
                          onPressed: () {
                            Route route = MaterialPageRoute(builder: (context) {
                              return MyApp();
                            });
                            Navigator.pop(context, route);
                          },
                          child: Row(
                            children: [
                               Icon(Icons.arrow_back_ios, size: 25.0),
                              new Text("Geri Dön",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox.fromSize(
                            child: Icon(Icons.settings ,size: 30.0),
                        ),
                       
                        new FlatButton( //TIKLAMA KISMI
                          onPressed: () {
                            Route route = MaterialPageRoute(builder: (context) {
                              return firmaBilgileri();
                            });
                            Navigator.push(context, route);
                          },
                       
                            child: Icon(Icons.person,   size: 30.0),
                          
                        ),

                        SizedBox.fromSize(
                          child: FittedBox(
                            child: Icon(Icons.repeat,size: 30.0),
                          ),
                        ),
                      ],
                    ),
                    ),

                // ----->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> BÖLÜMLER

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      //Colors.blue[900]
                      buildRow("Cari Hesaplar", Colors.lightBlue[800], "Stok",
                          Colors.red),
                      buildRow("Taksit Takip", Colors.greenAccent[400],
                          "Satış Yap", Colors.purple[700]),
                      buildRow("Çek Senet", Colors.teal[300], "Banka",
                          Colors.cyan[300]),
                      buildRow("Kasa", Colors.lightBlue[700], "Faturalar",
                          Colors.orange[700]),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
