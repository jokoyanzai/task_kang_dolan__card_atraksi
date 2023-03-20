import 'package:flutter/material.dart';
import 'package:task_kang_dolan__card_atraksi/atraksi.dart';
import 'item_atraksi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Atraksi> atraksi = [
    Atraksi(
      poster: "images/hanoman.png", 
      judul: "Sendratari: Sang Hanoman", 
      tanggal: "Rabu, 5 April 2023", 
      rating: "4.9", 
      like: "3000"),
    Atraksi(
      poster: "images/ramayana.png", 
      judul: "Sendratari: RAMAYANA", 
      tanggal: "Senin, 1 April 2023", 
      rating: "4.9", 
      like: "3000"),
    Atraksi(
      poster: "images/gatot_kaca.png", 
      judul: "Sendratari: Gatot Kaca", 
      tanggal: "Jumat, 7 April 2023", 
      rating: "4.9", 
      like: "3000"),
    Atraksi(
      poster: "images/tari_klasik.png", 
      judul: "Pagelaran Tari Klasik", 
      tanggal: "Sabtu-Minggu, 8-9 April 2023", 
      rating: "4.9", 
      like: "3000"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tiket Atraksi - ALL",
      home: Scaffold(
        appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
          title: const Text(
            "Atraksi Pekan Ini",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xffFDF7D9),
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: atraksi.length,
          padding: const EdgeInsets.all(10),
          itemBuilder: (BuildContext context, int index) {
            return ItemAtraksi(
              poster: atraksi[index].poster, 
              judul: atraksi[index].judul, 
              tanggal: atraksi[index].tanggal, 
              rating: atraksi[index].rating, 
              like: atraksi[index].like
            );
          }
        ),
      ),
    );
  }
}

