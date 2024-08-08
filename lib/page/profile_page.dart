import 'package:crypto_app/page/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          children: [
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Profile", style: GoogleFonts.urbanist(fontSize: 30, fontWeight: FontWeight.bold, color: CupertinoColors.black)),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => SettingsPage())
                      );
                    },
                    icon: Icon(Icons.settings, color: Colors.grey)
                ),
              ],
            ),
            Gap(20),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(140),
                color: Colors.pinkAccent,
              ),
              child: ClipOval(
                child: Image.network('https://www.psychologs.com/wp-content/uploads/2024/01/8-tips-to-be-a-jolly-person.jpg', fit: BoxFit.cover),
              ),
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Iftixor Ergashboyev", style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: CupertinoColors.black
                )),
                Icon(CupertinoIcons.checkmark_seal_fill, color: Colors.pink,)
              ],
            ),
            Text("Fully registered!", style: GoogleFonts.urbanist()),
            Gap(10),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text("My Account", style: GoogleFonts.urbanist()),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.navigate_next_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("My Contacts", style: GoogleFonts.urbanist()),
                  leading: Icon(CupertinoIcons.person_2_fill),
                  trailing: Icon(Icons.navigate_next_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Transaction History", style: GoogleFonts.urbanist()),
                  leading: Icon(CupertinoIcons.list_bullet_indent),
                  trailing: Icon(Icons.navigate_next_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Card Managment", style: GoogleFonts.urbanist()),
                  trailing: Icon(Icons.navigate_next_outlined),
                  leading: Icon(Icons.credit_card_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Help Center", style: GoogleFonts.urbanist()),
                  trailing: Icon(Icons.navigate_next_outlined),
                  leading: Icon(Icons.help),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
