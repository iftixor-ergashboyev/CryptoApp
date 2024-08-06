import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../page/main_page.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage('assets/icon/icon.jpg'), fit: BoxFit.cover)
              ),
            ),
            Gap(5),
            Text("Crypto App", style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, color: CupertinoColors.black
            )),
            Gap(10),
            CupertinoActivityIndicator(color: CupertinoColors.systemGrey),
          ],
        ),
      ),
      bottomNavigationBar: Text("Powered by Iftixor Ergashboyev", textAlign: TextAlign.center, style: GoogleFonts.solway()),
    );
  }
}