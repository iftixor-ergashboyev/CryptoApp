import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          children: [
            SizedBox(height: 70),
            Text("Settings", style: GoogleFonts.urbanist(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black
            )),
            Gap(10),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text("Permission", style: GoogleFonts.urbanist()),
                  leading: Icon(Icons.ring_volume),
                  trailing: Icon(Icons.navigate_next_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("App Lock", style: GoogleFonts.urbanist()),
                  leading: Icon(CupertinoIcons.lock),
                  trailing: Icon(Icons.navigate_next_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("App Theme", style: GoogleFonts.urbanist()),
                  leading: Icon(CupertinoIcons.moon_circle),
                  trailing: Icon(Icons.navigate_next_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("About App", style: GoogleFonts.urbanist()),
                  trailing: Icon(Icons.navigate_next_outlined),
                  leading: Icon(Icons.computer),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Text("Powered by Iftixor Ergashboyev", style: GoogleFonts.mPlus1Code(), textAlign: TextAlign.center,),
    );
  }
}
