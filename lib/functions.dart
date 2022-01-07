import 'package:dev/main.dart';
import 'package:flutter/material.dart';
import 'firma_bilgileri.dart';
 
buildLogo() {
  return Padding(
    padding: EdgeInsets.only(top: 26),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'asset/image/logo.png',
          width: 350,
        )
      ],
    ),
  );
}

sifreUnuttum() {
  return Padding(
    padding: const EdgeInsets.only(top: 15, bottom: 30),
    child: Text(
      "Şifremi Unuttum",
      style: TextStyle(
        color: Color(0xFF0001FC),
        fontSize: 16,
      ),
    ),
  );
}

checkBoxOlustur() {
  bool _checked = false;
  return CheckboxListTile(
    title: Text("Check"),
    secondary: Icon(Icons.beach_access),
    controlAffinity: ListTileControlAffinity.platform,
    value: _checked,
    onChanged: (bool? value) {},
    activeColor: Colors.green,
    checkColor: Colors.black,
  );
}

buildButtons(String text, final textColor, IconData icon) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Center(
      child: ButtonTheme(
        buttonColor: textColor,
        textTheme: ButtonTextTheme.primary,
        minWidth: 500,
        height: 50,
        child: RaisedButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(icon),
              Text(text,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    ),
  );
}

buildDemoButtons(String text, final textColor) {
  return Padding(
    padding: const EdgeInsets.only(top: 19),
    child: Center(
      child: ButtonTheme(
        buttonColor: textColor,
        textTheme: ButtonTextTheme.primary,
        minWidth: 175,
        height: 100,
        child: RaisedButton(
          onPressed: () {},
          child: Row(
            children: [
              Text(text,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
        ),
      ),
    ),
  );
}

buildLogoWhite() {
  return Container(
    color: Color((0x26344B).toInt() << 0).withOpacity(1.0),
    padding: EdgeInsets.all(25.0),
    child: Image.asset(
      'asset/image/beyazLogo.png',
    ),
  );
}

buildRow(String text, final color1, String text2,  final color2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [buildDemoButtons(text, color1), buildDemoButtons(text2, color2)],
  );
}

