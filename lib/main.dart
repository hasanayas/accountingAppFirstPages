import 'package:flutter/material.dart';
import 'demo.dart';
import 'functions.dart';
void main(){
  runApp(MaterialApp(
    routes: {"/demo": (context) => RouteDemo(), },
    debugShowCheckedModeBanner:false, //Debug yazısı kaldırma
    home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner:false,
      title: 'Bilsoft',
      home: Scaffold(
       body: SafeArea(
          child:SingleChildScrollView(
          //İşletim sisteminin interfacesinden kaynaklanları uzak tutar.
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:  16.0), //horizontal hem sağdan hem solda padding verir
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(height: 10,),
                //Logo
                buildLogo(),
                SizedBox(height: 15),
              

                // Giriş Ekranları
      
             TextFormField(style: TextStyle(fontSize:20), decoration: const InputDecoration( border: UnderlineInputBorder(),labelText: 'Vergi No',), ),
             TextFormField( style: TextStyle(fontSize:20), decoration: const InputDecoration( border: UnderlineInputBorder(), labelText: 'Kullanıcı Adı',),),
             TextFormField( style: TextStyle(fontSize:20), obscureText: true, decoration: const InputDecoration( border: UnderlineInputBorder(), labelText: 'Şifre',),),
  
             
            //Şifremi Unuttum
            sifreUnuttum(),


            //Butonlar
             buildButtons("  Giriş Yap",Colors.deepOrangeAccent,Icons.login),
             buildButtons("  Ücretsiz Deneme",Colors.blue[900],Icons.supervised_user_circle_rounded),
            //  buildButtons("  Demo Girişi Yap",Colors.red,Icons.remove_red_eye),
               
              
              
               //Demo Girişi Yap
       Padding(
    padding: const EdgeInsets.only(top:20),
    child: Center(
      child: 
ButtonTheme(
   buttonColor: Colors.red,    
   textTheme: ButtonTextTheme.primary,
   
  minWidth: 500,
  height: 50,
  child: RaisedButton(

    onPressed: () {

      Route route=MaterialPageRoute(builder:(context ){
        return RouteDemo();
      });
      Navigator.push(context, route);
    },

    child:Row(children: [
      Icon(Icons.remove_red_eye),
      Text("  Demo Girişi Yap", style: TextStyle(fontSize:15, fontWeight:FontWeight.bold)),
      
    ],
    ),
  ),
),
    ),
  ),


           //Telif Hakkı
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text("2021  © Bilsoft Online Muhasebe", style: TextStyle(fontSize: 16 ),
          ),
          ),
          )
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}



