import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class BtcTab extends StatefulWidget {
  const BtcTab({super.key});

  @override
  State<BtcTab> createState() => _BtcTabState();
}

class _BtcTabState extends State<BtcTab> {

  int? _sliding = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/img.png', width: 75, height: 75),
            Column(
              children: [
                Text(
                  "BTC",
                  style: GoogleFonts.urbanist(
                    color: CupertinoColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "+1.6%",
                  style: GoogleFonts.urbanist(color: Colors.grey),
                ),
              ],
            ),
            Image.asset('assets/images/img_3.png', width: 80, height: 80),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "29,850.15\$",
                  style: GoogleFonts.urbanist(
                    color: CupertinoColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "2.73 BTC",
                  style: GoogleFonts.urbanist(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        Gap(10),
        AspectRatio(
          aspectRatio: 1.5,
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: false), // Gridni yashirish
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false, // Pastki sarlavhalarni yashirish
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false, // Chap sarlavhalarni yashirish
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: false, // Chegarani yashirish
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 3),
                    FlSpot(2.6, 2),
                    FlSpot(4.9, 5),
                    FlSpot(6.8, 2.5),
                    FlSpot(8, 4),
                    FlSpot(9.5, 3),
                    FlSpot(11, 4),
                  ],
                  isCurved: true,
                  dotData: FlDotData(show: true),
                  color: Colors.red,
                  barWidth: 5,
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.red.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
        ),
        Gap(20),
        Container(
          width: double.infinity,
          child: CupertinoSlidingSegmentedControl(
              children:   {
                0: Text("Buy", style: GoogleFonts.urbanist(color: Colors.black)),
                1: Text("Sell", style: GoogleFonts.urbanist(color: Colors.black)),
              },
              groupValue: _sliding,
              onValueChanged: (int? newValue) {
                setState(() {
                  _sliding = newValue;
                });
              }
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Estimated purchase value", style: GoogleFonts.urbanist(color: Colors.grey)),
            Text("0.031", style: GoogleFonts.urbanist(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold)),
            Gap(20),
            Text("Trade value", style: GoogleFonts.urbanist(color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("0.031", style: GoogleFonts.urbanist(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text("25%", style: GoogleFonts.urbanist(color: Colors.red)),
                    SizedBox(width: 5),
                    Text("50%", style: GoogleFonts.urbanist(color: Colors.grey)),
                    SizedBox(width: 5,),
                    Text("100%", style: GoogleFonts.urbanist(color: Colors.grey)),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}


class EhtTab extends StatefulWidget {
  const EhtTab({super.key});

  @override
  State<EhtTab> createState() => _EhtTabState();
}

class _EhtTabState extends State<EhtTab> {

  int? _sliding = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        AspectRatio(
          aspectRatio: 1.5,
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: false), // Gridni yashirish
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false, // Pastki sarlavhalarni yashirish
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false, // Chap sarlavhalarni yashirish
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: false, // Chegarani yashirish
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 3),
                    FlSpot(2.6, 2),
                    FlSpot(4.9, 3),
                    FlSpot(6.8, 2.5),
                    FlSpot(7, 3),
                    FlSpot(9.5, 3),
                    FlSpot(11, 3.9),
                  ],
                  isCurved: true,
                  dotData: FlDotData(show: true),
                  color: Colors.blueGrey,
                  barWidth: 5,
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.blueGrey.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
        ),
        Gap(20),
        Container(
          width: double.infinity,
          child: CupertinoSlidingSegmentedControl(
              children:   {
                0: Text("Buy", style: GoogleFonts.urbanist(color: Colors.black)),
                1: Text("Sell", style: GoogleFonts.urbanist(color: Colors.black)),
              },
              groupValue: _sliding,
              onValueChanged: (int? newValue) {
                setState(() {
                  _sliding = newValue;
                });
              }
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Estimated purchase value", style: GoogleFonts.urbanist(color: Colors.grey)),
            Text("0.031", style: GoogleFonts.urbanist(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold)),
            Gap(20),
            Text("Trade value", style: GoogleFonts.urbanist(color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("0.031", style: GoogleFonts.urbanist(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text("25%", style: GoogleFonts.urbanist(color: Colors.blueGrey)),
                    SizedBox(width: 5),
                    Text("50%", style: GoogleFonts.urbanist(color: Colors.grey)),
                    SizedBox(width: 5,),
                    Text("100%", style: GoogleFonts.urbanist(color: Colors.grey)),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}

class LtcTab extends StatefulWidget {
  const LtcTab({super.key});

  @override
  State<LtcTab> createState() => _LtcTabState();
}

class _LtcTabState extends State<LtcTab> {

  int? _sliding = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        AspectRatio(
          aspectRatio: 1.5,
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: false), // Gridni yashirish
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false, // Pastki sarlavhalarni yashirish
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false, // Chap sarlavhalarni yashirish
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: false, // Chegarani yashirish
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 3),
                    FlSpot(2.6, 2),
                    FlSpot(4.9, 3),
                    FlSpot(6.8, 2.5),
                    FlSpot(7, 3),
                    FlSpot(9.5, 3),
                    FlSpot(11, 3.9),
                  ],
                  isCurved: true,
                  dotData: FlDotData(show: true),
                  color: Colors.green,
                  barWidth: 5,
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.greenAccent.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
        ),
        Gap(20),
        Container(
          width: double.infinity,
          child: CupertinoSlidingSegmentedControl(
              children:   {
                0: Text("Buy", style: GoogleFonts.urbanist(color: Colors.black)),
                1: Text("Sell", style: GoogleFonts.urbanist(color: Colors.black)),
              },
              groupValue: _sliding,
              onValueChanged: (int? newValue) {
                setState(() {
                  _sliding = newValue;
                });
              }
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Estimated purchase value", style: GoogleFonts.urbanist(color: Colors.grey)),
            Text("0.031", style: GoogleFonts.urbanist(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold)),
            Gap(20),
            Text("Trade value", style: GoogleFonts.urbanist(color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("0.031", style: GoogleFonts.urbanist(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text("25%", style: GoogleFonts.urbanist(color: Colors.greenAccent)),
                    SizedBox(width: 5),
                    Text("50%", style: GoogleFonts.urbanist(color: Colors.grey)),
                    SizedBox(width: 5,),
                    Text("100%", style: GoogleFonts.urbanist(color: Colors.grey)),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}

class XrpTab extends StatefulWidget {
  const XrpTab({super.key});

  @override
  State<XrpTab> createState() => _XrpTabState();
}

class _XrpTabState extends State<XrpTab> {

  int? _sliding = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        Gap(10),
        AspectRatio(
          aspectRatio: 1.5,
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: false), // Gridni yashirish
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false, // Pastki sarlavhalarni yashirish
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false, // Chap sarlavhalarni yashirish
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: false, // Chegarani yashirish
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 3),
                    FlSpot(2.6, 2),
                    FlSpot(4.9, 3),
                    FlSpot(6.8, 2.5),
                    FlSpot(7, 3),
                    FlSpot(9.5, 3),
                    FlSpot(11, 3.9),
                  ],
                  isCurved: true,
                  dotData: FlDotData(show: true),
                  color: Colors.blueGrey,
                  barWidth: 5,
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.blueGrey.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
        ),
        Gap(20),
        Container(
          width: double.infinity,
          child: CupertinoSlidingSegmentedControl(
              children:   {
                0: Text("Buy", style: GoogleFonts.urbanist(color: Colors.black)),
                1: Text("Sell", style: GoogleFonts.urbanist(color: Colors.black)),
              },
              groupValue: _sliding,
              onValueChanged: (int? newValue) {
                setState(() {
                  _sliding = newValue;
                });
              }
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Estimated purchase value", style: GoogleFonts.urbanist(color: Colors.grey)),
            Text("0.031", style: GoogleFonts.urbanist(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold)),
            Gap(20),
            Text("Trade value", style: GoogleFonts.urbanist(color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("0.031", style: GoogleFonts.urbanist(color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text("25%", style: GoogleFonts.urbanist(color: Colors.blueGrey)),
                    SizedBox(width: 5),
                    Text("50%", style: GoogleFonts.urbanist(color: Colors.grey)),
                    SizedBox(width: 5,),
                    Text("100%", style: GoogleFonts.urbanist(color: Colors.grey)),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}



