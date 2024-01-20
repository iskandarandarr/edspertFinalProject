import 'package:flutter/material.dart';
import '../custom_widget/title_widget.dart';
import '../custom_widget/input_widget.dart';

// widget Color itu ada 2, yaitu Color dan Colors,
// kalau Color itu untuk memasukan warna menggunakan code color palette dan harus menambahkan 0xFF di depannya
// sedangkan Colors adalah color palette yang udah disediakan oleh flutter

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF1C1A29),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 21),
          child: Column(
            children: [
              Expanded(
                // widget Expanded digunakan untuk membungkus sebuah widget dan mengambil sisa space yang ada
                child: Center(
                  child: ListView(
                    // ListView adalah widget untuk membungkus widget2 yg lain, kenapa pake ListView? , biar bisa di scroll
                    shrinkWrap: true,
                    children: [
                      titleWidget(), // ini widget custom
                      SizedBox(height: 104),
                      Center(
                        // widget ini untuk membungkus sebuah widget dan membuatnya jadi ke tengah
                        child: Text(
                          'Masuk',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 32), // untuk membuat jarak antar widget
                      InputWidget(
                        // ini adalah widget custom yang saya buat di folder custom_widget/input_widget.dart
                        label: "username",
                        icon: Icons
                            .account_circle, // ini adalah parameter untuk di lempar ke InputWidget
                      ),
                      SizedBox(height: 8),
                      InputWidget(label: "password", icon: Icons.lock_outline),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'Belum Punya Akun? ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          InkWell(
                            // untuk membungkus Text agar bisa di tap
                            onTap: () {},
                            child: Text(
                              'Daftar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                // ini widget untuk membuat tombol
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    // untuk mengubah border radius
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Color(0xFF867AD2),
                ),
                child: Container(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Masuk',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
