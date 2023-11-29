import 'package:flutter/material.dart';
import 'page/produk.dart';
import 'page/semuaproduk.dart';
import 'page/homepage.dart';
import 'page/keranjang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Keranjang(),
    );
  }
}
