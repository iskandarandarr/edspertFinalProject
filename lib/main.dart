import 'package:edspert_final_project/screen/splash_screen.dart';
import 'package:flutter/material.dart';

//main.dart adalah halaman pertama yang di render/dijalankan
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          SplashScreen(), // disini saya langsung mengarahkan ke halaman splashscreen
    );
  }
}
