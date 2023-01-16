import 'package:flutter/material.dart';

class LuasPersegi extends StatefulWidget {
  const LuasPersegi({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _LuasPersegi createState() => _LuasPersegi();
}

class _LuasPersegi extends State<LuasPersegi> {
  TextEditingController panjanginput = TextEditingController();
  TextEditingController lebarinput = TextEditingController();
  String result = "0";
  String panjang = "0";
  String lebar = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Luas Persegi',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          persegi(),
        ],
      ),
    );
  }

  Widget persegi() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            controller: panjanginput,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Panjang',
              hintText: '0',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: lebarinput,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Lebar',
              hintText: '0',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Luas Persegi = Panjang x Lebar'),
          const SizedBox(
            height: 10,
          ),
          Text('Luas Persegi = $panjang x $lebar'),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Luas Persegi = $result',
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
                    if (panjanginput.text == "" || lebarinput.text == "") {
                      panjang = '0';
                      lebar = '0';
                      result = '0';
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Peringatan : Inputan Salah')));
                    } else {
                      int sum = int.parse(panjanginput.text) *
                          int.parse(lebarinput.text);
                      panjang = panjanginput.text;
                      lebar = lebarinput.text;
                      result = sum.toString();
                    }
                  });
                },
                child: const Text("Hitung Luas Persegi"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
