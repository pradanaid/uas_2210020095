import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'persegi.dart';
import 'lingkaran.dart';
import 'profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans(
                fontWeight: FontWeight.w900, color: Colors.black)
            .fontFamily,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(325, 60),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent.withOpacity(0.1),
            side: const BorderSide(
              width: 4,
              color: Colors.blue,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      title: 'UAS',
      home: AplikasiKu(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class AplikasiKu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'UAS_2210020095',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        alignment: Alignment.topCenter,
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LuasPersegi()));
              },
              child: const Text(
                  'HITUNG LUAS PERSEGI\nPilih Untuk Mulai Menghitung Luas Persegi',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                  textAlign: TextAlign.center),
            ),
            const SizedBox(height: 11),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LuasLingkaran()));
              },
              child: const Text(
                  'HITUNG LUAS LINGKARAN\nPilih Untuk Mulai Menghitung Luas Lingkaran',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 12),
                  textAlign: TextAlign.center),
            ),
            const SizedBox(height: 11),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainPage()));
              },
              child: const Text('PROFILE DEVELOPER',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
