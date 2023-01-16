import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double coverHeight = 200;
  double profilHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          bagAtas(),
          bagContent(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.keyboard_double_arrow_left),
        label: const Text('Kembali'),
      ),
    );
  }

  Widget bagAtas() {
    final bawah = profilHeight / 2;
    final atas = coverHeight - (profilHeight / 2);

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bawah),
          child: gambarBgAtas(),
        ),
        Positioned(
          top: coverHeight + 5,
          child: gambarBgBwh(),
        ),
        Positioned(
          top: atas,
          child: gambarProfile(),
        ),
      ],
    );
  }

  Widget gambarBgAtas() => Container(
        color: Colors.grey,
        child: Image.asset(
          'assets/images/BlueSky.jpg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget gambarBgBwh() => Image.asset(
        'assets/images/PastelBlue.jpg',
        width: 400,
        //height: coverHeight,
        fit: BoxFit.cover,
      );

  Widget gambarProfile() => CircleAvatar(
        radius: profilHeight / 2,
        backgroundColor: Colors.white,
        child: const CircleAvatar(
            radius: 68,
            backgroundColor: Colors.blue,
            child: CircleAvatar(
              radius: 63,
              backgroundImage: AssetImage('assets/images/profil.jpg'),
            )),
      );

  Widget bagContent() => Column(
        children: [
          const SizedBox(height: 8),
          const Text(
            'Pradana Iqbal Anshori',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'NPM : 2210020095',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bagSosmed(FontAwesomeIcons.instagram),
              const SizedBox(width: 12),
              bagSosmed(FontAwesomeIcons.whatsapp),
              const SizedBox(width: 12),
              bagSosmed(FontAwesomeIcons.telegram),
              const SizedBox(width: 12),
              bagSosmed(FontAwesomeIcons.twitter),
              const SizedBox(width: 12),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            '+6281253502002 (WhatsApp/Telegram)\nRantau, Kab. Tapin, Kalimantan Selatan',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          const Divider(
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
          const SizedBox(height: 16),
          bagTentang(),
          const SizedBox(height: 32),
        ],
      );

  Widget bagTentang() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Tugas UAS',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Dosen : Muharir, S.Kom, M.Kom\nMata Kuliah :Pemrograman Mobile (Flutter)\nKelas : 5A Nonreg BJM',
              style: TextStyle(fontSize: 14, height: 1.4),
            ),
          ],
        ),
      );

  Widget bagSosmed(IconData icon) => CircleAvatar(
        radius: 25,
        foregroundColor: Colors.white,
        child: Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.blue,
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Icon(icon, size: 35),
            ),
          ),
        ),
      );
}
