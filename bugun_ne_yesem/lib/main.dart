import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Bugün Ne Yesem?',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({super.key});

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari=['Mercimek Çorbası','Tarhana Çorbası','Tavuk Suyu Çorba','Düğün Çorbası','Yoğurt Çorbası'];
  List<String> yemekAdlari=['Karnıyarık','Mantı','Kuru Fasulye','içli Köfte','Izgara Balık'];
  List<String> tatliAdlari=['Kadayıf','Baklava','Sütlaç','Kazandibi','Dondurma'];

  void YemekleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  YemekleriYenile();
                },
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(corbaAdlari[corbaNo-1]),
          Container(
              width: 250,
              child: Divider(
                color: Colors.black,
                height: 5,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  YemekleriYenile();
                },
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(yemekAdlari[yemekNo-1]),
          Container(
              width: 250,
              child: Divider(
                color: Colors.black,
                height: 5,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    YemekleriYenile();
                  },
                  child: Image.asset('assets/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(tatliAdlari[tatliNo-1]),
          Container(
              width: 250,
              child: Divider(
                color: Colors.black,
                height: 5,
              )),
        ],
      ),
    );
  }
}
