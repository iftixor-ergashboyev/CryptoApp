import 'package:crypto_app/page/access.dart';
import 'package:crypto_app/page/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CryptoApp());
}
class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
      ),
      home: const Access(),
    );
  }
}
