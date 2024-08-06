import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
           SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Portfolio", style: GoogleFonts.urbanist(fontSize: 30, fontWeight: FontWeight.bold, color: CupertinoColors.black)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings, color: Colors.grey)
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
