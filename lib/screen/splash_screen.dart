import 'dart:async';
import '../custom_widget/title_widget.dart';
import 'package:edspert_final_project/screen/login.dart';
import 'package:flutter/material.dart';

// perbedaan StatefulWidget dan StatelessWidget adalah kalau
//StatefulWidget digunakan ketika dalam screen tersebut terdapat peruhan data/value,
//sedangkan StatelessWidget digunakan ketika screen tersebut tidak memiliki perubahan value/data.

//MaterialApp merupakan tahapan tertinggi dalam membuat screen, dan tidak lupa dibarengi dengan Scaffold,
// kalau diibaratkan dengan media untuk melukis, MaterialApp ini merupakan papan kayu nya untuk meletakan kanvas,
// sedangkan Scaffold adalah kanvas nya yang dapat digunakan untuk melukis apapun

//untuk menambahkan image harus di daftarkan dulu di pubspec.yaml
// dalam hal ini saya membuat folder asset yang di dalamnya saya buat forler images dan saya letakan file imagenya di folder tersebut
// lalu saya daftarkan di pubspec.yaml di bagian assets, dalam project ini di line 60

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      // widget Timer digunakan untuk menghitung countdown, dalam hal ini digunakan untuk berpindah halaman secara otomatis
      Duration(seconds: 3), // widget Duration untuk menentukan durasi nya
      () => Navigator.of(context).pushReplacement(
        // Navigator digunakan untuk pindah halaman, pushReplacement digunakan agar tidak bisa kembali ke halaman sebelumnya/ tidak bisa di back
        MaterialPageRoute(
          builder: (context) => Login(), // pindah ke halaman login
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context)
        .size
        .width; // untuk mendapatkan lebar layar device yang digunakan
    double screenHeight = MediaQuery.of(context)
        .size
        .height; // untuk mendapatkan tinggi layar device yang digunakan
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: Stack(
          // Stack adalah widget untuk membungkus widget2 lain dengan cara menimpa nya secara berurutan/dari belakang ke depan
          children: [
            Column(
              // column adalah widget untuk membungkus widget2 lain secara vertical
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  // digunakan untuk membungkus sebuah widget, dalam hal ini untuk membungkus image
                  width: screenWidth,
                  height:
                      screenHeight * 0.8, // ini maksudnya 80% dari tinggi layar
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/image1.png',
                      ), // AssetImage untuk menampilkan image secara local
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              // untuk membuat sebuah layer/kotak yang memenuhi seluruh layar dan mengubah warnanya menjadi transparant
              color: Colors.black54.withOpacity(0.6),
              width: screenWidth,
              height: screenHeight,
            ),
            Container(
              // untuk membuat layer di bagian atasnya
              width: screenWidth,
              height: screenHeight * 0.2,
              decoration: BoxDecoration(
                color: Colors.black54,
                boxShadow: [
                  BoxShadow(
                    // membuat shadow di bagian bawah layer
                    color: Colors.black54,
                    blurRadius: 4,
                    offset: Offset(0, 20),
                  ),
                ],
              ),
            ),
            Padding(
              // untuk memberikan padding/jarak pada widget
              padding: const EdgeInsets.only(top: 148),
              child:
                  titleWidget(), // ini widget custom yang saya buat di folder custom_widget/title_widget.dart
            ),
          ],
        ),
      ),
    );
  }
}
