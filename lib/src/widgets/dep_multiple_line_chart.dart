import 'dart:math';

import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DepMultipleLineChart extends StatefulWidget {
  final List<PricePoint> points;
  final String primaryText, amount, secondaryText;
  final Widget icon;
  const DepMultipleLineChart(
      {super.key,
      required this.icon,
      required this.points,
      required this.amount,
      required this.primaryText,
      required this.secondaryText});

  @override
  State<DepMultipleLineChart> createState() => _DepMultipleLineChartState();
}

class _DepMultipleLineChartState extends State<DepMultipleLineChart> {
  // Generate some dummy data for the cahrt
  // This will be used to draw the red line
  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the orange line
  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the blue line
  final List<FlSpot> dummyData3 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

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
                        // The red line
                        LineChartBarData(
                          spots: dummyData1,
                          isCurved: false,
                          barWidth: 3,
                          color: Colors.red,
                        ),
                        // The orange line
                        LineChartBarData(
                          spots: dummyData2,
                          isCurved: false,
                          barWidth: 3,
                          color: Colors.orange,
                        ),
                        // The blue line
                        LineChartBarData(
                          spots: dummyData3,
                          isCurved: false,
                          barWidth: 3,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  )),
              // Material(
              //   color: Colors.transparent,
              //   child: Wrap(
              //       spacing: 5,
              //       verticalDirection: VerticalDirection.up,
              //       direction: Axis.horizontal,
              //       alignment: WrapAlignment.spaceBetween,
              //       children: List.generate(widget.points.length, (index) {
              //         var e = widget.points[index];
              //         return Container(
              //           padding: const EdgeInsets.only(right: 10),
              //           child: Row(
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             mainAxisSize: MainAxisSize.min,
              //             children: [
              //               Container(
              //                 width: 9,
              //                 height: 9,
              //                 decoration: ShapeDecoration(
              //                   color: e.color,
              //                   shape: const OvalBorder(),
              //                 ),
              //               ),
              //               horizontalSpaceSmall,
              //               DepText(
              //                 text: e.title,
              //                 txtColor: gray600,
              //                 font: 12,
              //                 fntweight: FontWeight.w400,
              //               )
              //             ],
              //           ),
              //         );
              //       })),
              // )
            ],
          ),
        ],
      ),
    );
  }
}
