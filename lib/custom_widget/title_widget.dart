import 'package:flutter/material.dart';

class titleWidget extends StatelessWidget {
  const titleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // widget Row digunakan untuk membungkus widget2 lain secara horizontal
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          // widget Text digunakan untuk menampilkan Text
          'Nonton',
          style: TextStyle(
            // widget ini untuk memberikan styling pada text
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '·ID',
          style: TextStyle(
            fontSize: 40,
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
