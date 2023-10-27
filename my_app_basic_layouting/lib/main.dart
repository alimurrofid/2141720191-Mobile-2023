import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
          backgroundColor: Colors.red[700],
        ),
        body: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      'BERITA TERBARU',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      'PERTANDINGAN HARI INI',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purple,
                  width: 2,
                  style: BorderStyle.solid,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Image.network(
                    'https://i.pinimg.com/originals/69/79/da/6979dac8d48833ab2012251956939d30.jpg',
                    width: 400,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    child: const Text(
                      'Costa Mendekat Ke Palmeiras',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[300],
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Transfer',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.network(
                                'https://i.pinimg.com/originals/69/79/da/6979dac8d48833ab2012251956939d30.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const Text(
                                    "Pique Bilang Wasit Untungkan Madrid Koeman Tepok Jidat",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Barcelona Feb 13, 2021",
                            textAlign: TextAlign.left,
                          ),
                          width: double.infinity,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.network(
                                'https://i.pinimg.com/originals/69/79/da/6979dac8d48833ab2012251956939d30.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const Text(
                                    "Pique Bilang Wasit Untungkan Madrid Koeman Tepok Jidat",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Barcelona Feb 13, 2021",
                            textAlign: TextAlign.left,
                          ),
                          width: double.infinity,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
