import 'package:flutter/material.dart';
import 'persegi.dart';
import 'lingkaran.dart';
import 'profile.dart';

// ignore: use_key_in_widget_constructors, camel_case_types
class menuAwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/PastelBlue.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(83, 0, 102, 255),
            title: const Text(
              'UAS_2210020095',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            centerTitle: true,
          ),
          body: Container(
            margin: const EdgeInsets.only(top: 30),
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
                const SizedBox(height: 15),
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
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileDev()));
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
        )
      ],
    );
  }
}
