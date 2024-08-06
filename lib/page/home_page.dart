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
            Gap(10),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.lightBlueAccent,
                    Colors.pinkAccent
                  ]
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("49.329.67\$", style: GoogleFonts.urbanist(fontSize: 34, fontWeight: FontWeight.bold, color: CupertinoColors.white)),
                        Image.asset('assets/images/bitcoin.png', height: 30, width: 30)
                      ],
                    ),
                    Text("Your balance is equivalent", style: GoogleFonts.urbanist(color: CupertinoColors.white)),
                    Gap(45),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white10
                          ),
                          child: Center(child: Text("Deposit", textAlign: TextAlign.center, style: GoogleFonts.urbanist(color: CupertinoColors.white))),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 35,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white10
                          ),
                          child: Center(child: Text("Withdraw", textAlign: TextAlign.center, style: GoogleFonts.urbanist(color: CupertinoColors.white))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Charts", style: GoogleFonts.urbanist(
                  color: CupertinoColors.systemGrey
                )),
                Text("See All", style: GoogleFonts.urbanist(
                  color: Colors.redAccent, fontWeight: FontWeight.bold
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/images/img.png', width: 75, height: 75),
                Column(
                  children: [
                    Text("BTC", style: GoogleFonts.urbanist(color: CupertinoColors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                    Text("+1.6%", style: GoogleFonts.urbanist(color: Colors.grey)),
                  ],
                ),
                Image.asset('assets/images/img_3.png', width: 80, height: 80),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("29,850,15\$", style: GoogleFonts.urbanist(color: CupertinoColors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                    Text("2.73 BTC", style: GoogleFonts.urbanist(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/images/img_1.png', width: 75, height: 75),
                Column(
                  children: [
                    Text("EHT", style: GoogleFonts.urbanist(color: CupertinoColors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                    Text("+0.8%", style: GoogleFonts.urbanist(color: Colors.grey)),
                  ],
                ),
                Image.asset('assets/images/img_4.png', width: 80, height: 80),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("10,561,15\$", style: GoogleFonts.urbanist(color: CupertinoColors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                    Text("47.61 EHT", style: GoogleFonts.urbanist(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/images/ltc_image.png', width: 75, height: 75),
                Column(
                  children: [
                    Text("LTC", style: GoogleFonts.urbanist(color: CupertinoColors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                    Text("+0.4%", style: GoogleFonts.urbanist(color: Colors.grey)),
                  ],
                ),
                Image.asset('assets/images/img_5.png', width: 80, height: 80),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("3,676,15\$", style: GoogleFonts.urbanist(color: CupertinoColors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                    Text("39.27 EHT", style: GoogleFonts.urbanist(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/images/img_2.png', width: 75, height: 75),
                Column(
                  children: [
                    Text("XRP", style: GoogleFonts.urbanist(color: CupertinoColors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                    Text("+0.1%", style: GoogleFonts.urbanist(color: Colors.grey)),
                  ],
                ),
                Image.asset('assets/images/img_6.png', width: 80, height: 80),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("5,241,15\$", style: GoogleFonts.urbanist(color: CupertinoColors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                    Text("1.447.65 EHT", style: GoogleFonts.urbanist(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
