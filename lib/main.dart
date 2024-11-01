import 'package:flutter/material.dart';

void main() => runApp(BenimUygulamam());

class BenimUygulamam extends StatefulWidget {
  @override
  _BenimUygulamamDurum createState() => _BenimUygulamamDurum();
}

class _BenimUygulamamDurum extends State<BenimUygulamam> {
  // Başlangıç teması olarak açık temayı ayarla
  ThemeData _mevcutTema = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light, // Açık tema
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(color: Colors.black),
    ),
    scaffoldBackgroundColor: Colors.white,
  );

  // Tema değiştirme fonksiyonu
  void _temaDegistir() {
    setState(() {
      // Tema koyu veya açık duruma göre ayarlanır
      _mevcutTema = _mevcutTema.brightness == Brightness.dark
          ? ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light, // Açık tema
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.black),
        ),
        scaffoldBackgroundColor: Colors.white,
      )
          : ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark, // Koyu tema
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.grey[800],
          textTheme: ButtonTextTheme.primary,
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.white),
        ),
        scaffoldBackgroundColor: Colors.black,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _mevcutTema, // Seçilen tema uygulamaya atanır
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tema Değiştirme Uygulaması"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tema: ${_mevcutTema.brightness == Brightness.dark ? "Karanlık" : "Açık"}",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _temaDegistir, // Butona basıldığında tema değişir
                child: Text("Temayı Değiştir"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
