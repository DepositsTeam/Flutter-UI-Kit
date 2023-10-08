import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DepLineChart extends StatefulWidget {
  final List<PricePoint> points;
  final String primaryText, amount, secondaryText;
  final Widget icon;
  const DepLineChart(
      {super.key,
      required this.icon,
      required this.points,
      required this.amount,
      required this.primaryText,
      required this.secondaryText});

  @override
  State<DepLineChart> createState() => _DepLineChartState();
}

class _DepLineChartState extends State<DepLineChart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DepText(
                      text: widget.primaryText,
                      txtColor: gray600,
                      font: 16,
                      fntweight: FontWeight.w600,
                    ),
                    verticalSpaceTiny,
                    DepText(
                      text: widget.amount,
                      txtColor: const Color(0xFF2A2E33),
                      font: 40,
                      fntweight: FontWeight.w500,
                      letterSpace: -1.50,
                    ),
                    verticalSpaceTiny,
                    DepText(
                      text: widget.secondaryText,
                      txtColor: gray600,
                      font: 14,
                      fntweight: FontWeight.w400,
                    )
                  ],
                ),
                widget.icon
              ]),
          verticalSpaceSmallX,
          Container(height: 1.0, color: gray400),
          verticalSpaceSmallX,
          Column(
            children: [
              SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: LineChart(
                    LineChartData(
                      lineBarsData: [
                        LineChartBarData(
                          isCurved: false,
                          spots: [
                          const FlSpot(0, 1),
                          const FlSpot(1, 3),
                          const FlSpot(2, 10),
                          const FlSpot(3, 7),
                          const FlSpot(4, 12),
                          const FlSpot(5, 13),
                          const FlSpot(6, 17),
                          const FlSpot(7, 15),
                          const FlSpot(8, 20)
                        ])
                      ],
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
