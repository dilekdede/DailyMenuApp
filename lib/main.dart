import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'BUGÜN NE YESEM?',
            style: const TextStyle(color: Colors.black, fontSize: 28),
          ),
          backgroundColor: Colors.amber[50],
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  //Yemek adlarını bir listede tutalım
  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'TavukSuysu',
    'Düğün çorbası',
    'Yoğutlu Çorba'
  ];

  List<String> yemekAdlari = [
    'KarnıYarık',
    'Mantı',
    'KuruFasulye',
    'İçliKöfte',
    'Balık'
  ];

  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'KazanDibi',
    'Dondurma'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {
                    durumFonksiyonu();
                  },
                  child: Image.asset('assets/images/corba_$corbaNo.jpg')),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 18),
          ),
          Container(
            width: 350,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {
                    durumFonksiyonu();
                  },
                  child: Image.asset('assets/images/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 18),
          ),
          Container(
            width: 350,
            child: Divider(height: 5, color: Colors.black),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {
                    durumFonksiyonu();
                  },
                  child: Image.asset('assets/images/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(
            tatliAdlari[tatliNo -
                1], //-1 yapmamızın sebebi Listelerin indexi 0'dan balıyor
            style: TextStyle(fontSize: 18),
          ),
          Container(
            width: 350,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void durumFonksiyonu() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }
}
