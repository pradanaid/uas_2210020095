import 'package:flutter/material.dart';

class LuasLingkaran extends StatefulWidget {
  const LuasLingkaran({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _LuasPersegi createState() => _LuasPersegi();
}

class _LuasPersegi extends State<LuasLingkaran> {
  TextEditingController jariinput = TextEditingController();
  String result = "0";
  String jari = "0";
  double pii = 3.14;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Luas Lingkaran',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          lingkaran(),
        ],
      ),
    );
  }

  Widget lingkaran() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
              keyboardType: TextInputType.number,
              controller: jariinput,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'jari-hari (r)',
                hintText: '0',
              )),
          const SizedBox(
            height: 20,
          ),
          const Text('Luas Lingkaran = pi x r x r'),
          const SizedBox(
            height: 10,
          ),
          Text('Luas Lingkaran = 3.14 x $jari x $jari'),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Luas Lingkaran = $result',
            style: const TextStyle(
              shadows: [Shadow(color: Colors.black, offset: Offset(0, -5))],
              color: Colors.transparent,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                onPressed: () {
                  setState(() {
                    if (jariinput.text == "") {
                      jari = '0';
                      result = '0';
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Peringatan : Inputan Salah')));
                    } else {
                      double sum = int.parse(jariinput.text) *
                          int.parse(jariinput.text) *
                          pii;
                      jari = jariinput.text;
                      result = sum.toString();
                    }
                  });
                },
                child: const Text("Hitung Luas Lingkaran"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
