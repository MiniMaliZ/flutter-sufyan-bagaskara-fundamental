import 'package:flutter/material.dart';

void main() {
  runApp(const MyCalculator());
}

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyAppState();
}

class _MyAppState extends State<MyCalculator> {
  TextEditingController Kontrol1 = TextEditingController();
  TextEditingController Kontrol2 = TextEditingController();

  // Variabel
  double hasil = 0;
  double angkaPertama = 0;
  double angkaKedua = 0;

  // function aritmatika
  Tambah() {
    setState(() {
      angkaPertama = double.parse(Kontrol1.text);
      angkaKedua = double.parse(Kontrol2.text);
      hasil = angkaPertama + angkaKedua;
    });
  }

  Kurang() {
    setState(() {
      angkaPertama = double.parse(Kontrol1.text);
      angkaKedua = double.parse(Kontrol2.text);
      hasil = angkaPertama - angkaKedua;
    });
  }

  Kali() {
    setState(() {
      angkaPertama = double.parse(Kontrol1.text);
      angkaKedua = double.parse(Kontrol2.text);
      hasil = angkaPertama * angkaKedua;
    });
  }

  Bagi() {
    setState(() {
      angkaPertama = double.parse(Kontrol1.text);
      angkaKedua = double.parse(Kontrol2.text);
      hasil = angkaPertama / angkaKedua;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Kalkulator'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.center,
                child: Text('Hasil : $hasil',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  controller: Kontrol1,
                  decoration: InputDecoration(
                      labelText: 'Masukkan Angka Pertama',
                      filled: true,
                      fillColor: Colors.black12),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  controller: Kontrol2,
                  decoration: InputDecoration(
                      labelText: 'Masukkan Angka Kedua',
                      filled: true,
                      fillColor: Colors.black12),
                )),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Tambah();
                          Kontrol1.clear();
                          Kontrol2.clear();
                        },
                        child: Text('Tambah')),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Kurang();
                          Kontrol1.clear();
                          Kontrol2.clear();
                        },
                        child: Text('Kurang')),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Kali();
                          Kontrol1.clear();
                          Kontrol2.clear();
                        },
                        child: Text('Kali')),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Bagi();
                          Kontrol1.clear();
                          Kontrol2.clear();
                        },
                        child: Text('Bagi'))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
