import 'dart:async';
import 'package:flutter/material.dart';
import 'menu.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    return Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => menuAwal()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const SizedBox(
              width: 150,
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/images/profil.jpg'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'PRADANA IQBAL ANS\nNPM : 2210020095',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            SizedBox(
                child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.whatsapp_outlined),
                    label: const Text(
                      '08125350xxxx',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ))),
            SizedBox(
                child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.class_outlined),
                    label: const Text(
                      '5A NonReg Banjarmasin',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ))),
            const SizedBox(height: 100),
            const Text(
              'wait...',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.green),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
