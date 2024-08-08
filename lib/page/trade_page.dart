import 'package:crypto_app/consts/my_tabbar.dart';
import 'package:crypto_app/page/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TradePage extends StatefulWidget {
  const TradePage({super.key});

  @override
  State<TradePage> createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: CupertinoColors.white,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trade",
                    style: GoogleFonts.urbanist(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => SettingsPage())
                      );
                    },
                    icon: Icon(Icons.settings, color: Colors.grey),
                  ),
                ],
              ),
              Gap(10),
              TabBar(
                labelColor: Colors.red,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.red,
                tabs: [
                  Tab(text: "BTC"),
                  Tab(text: "ETH"),
                  Tab(text: "LTC"),
                  Tab(text: "XRP"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    BtcTab(),
                    EhtTab(),
                    LtcTab(),
                    XrpTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
