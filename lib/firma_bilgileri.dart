import 'package:dev/main.dart';
import 'package:flutter/material.dart';
import 'functions.dart';
import 'demo.dart';

void main() {
  runApp(MaterialApp(
      routes: {
        "/MyApp": (context) => RouteDemo(),
      },
      debugShowCheckedModeBanner: false, //Debug yazısı kaldırma
      home: MyApp()));
}

class firmaBilgileri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bilsoft',
        home: Scaffold(
          //Hexadecimal Renk
          backgroundColor: Color((0xF4F1F1).toInt() << 0).withOpacity(1.0),

          body: SingleChildScrollView(
            //Scroll

            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              Icon(Icons.arrow_back_ios, size: 30.0),
                              new Text("Geri Dön",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox.fromSize(
                          child: Icon(Icons.settings_suggest, size: 30.0),
                        ),
                        new FlatButton(
                          //TIKLAMA KISMI
                          onPressed: () {
                            //DÖNECEK SAYFAYA PUSH EDİLECEK ALAN
                            // Route route = MaterialPageRoute(builder: (context) {
                            //   return firmaBilgileri();
                            // });
                            // Navigator.push(context, route);
                          },

                          child: Icon(Icons.person, size: 30.0),
                        ),
                        SizedBox.fromSize(
                          child: FittedBox(
                            child: Icon(Icons.repeat, size: 30.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ----->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FORMLAR

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [

                        TextFormField(
                          style: TextStyle(fontSize: 15),
                          decoration: const InputDecoration(
                            labelText: 'Firma Ünvanı',
                          ),
                        ),

                        TextFormField(
                          style: TextStyle(fontSize: 15),
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Vergi Dairesi',
                          ),
                        ),

                        TextFormField(
                          style: TextStyle(fontSize: 15),
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Vergi Numarası',
                          ),
                        ),

                        TextFormField(
                          style: TextStyle(fontSize: 15),
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Sabit Tel',
                          ),
                        ),

                        TextFormField(
                          style: TextStyle(fontSize: 15),
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Fax No',
                          ),
                        ),

                        TextFormField(
                          style: TextStyle(fontSize: 15),
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Gsm No',
                          ),
                        ),

                        TextFormField(
                          style: TextStyle(fontSize: 15),
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Email ',
                          ),
                        ),

                        TextFormField(
                          style: TextStyle(fontSize: 15),
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Web Sitesi',
                          ),
                        ),


                        TextFormField(
                          style: TextStyle(fontSize: 15),
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Email ',
                          ),
                        ),

                        TextFormField(
                          style: TextStyle(fontSize: 15),
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Web Sitesi',
                          ),
                        ),
                         
                      ],
                      
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
