import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DepHalfPieChart extends StatefulWidget {
  final List<Sector> sectors;
  final String primaryText, amount, secondaryText;
  final Widget icon;
  const DepHalfPieChart(
      {super.key,
      required this.icon,
      required this.sectors,
      required this.amount,
      required this.primaryText,
      required this.secondaryText});

  @override
  State<DepHalfPieChart> createState() => _DepHalfPieChartState();
}

class _DepHalfPieChartState extends State<DepHalfPieChart> {
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
                width: 200,
                child: PieChart(PieChartData(
                  startDegreeOffset: -90.00,
                  sections: _chartSections(widget.sectors),
                  centerSpaceRadius: 40.0,
                  sectionsSpace: 0,
                  borderData: FlBorderData(show: false),
                )),
              ),
              Material(
                color: Colors.transparent,
                child: Wrap(
                    spacing: 5,
                    verticalDirection: VerticalDirection.up,
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.spaceBetween,
                    children: List.generate(widget.sectors.length, (index) {
                      var e = widget.sectors[index];
                      return Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 9,
                              height: 9,
                              decoration: ShapeDecoration(
                                color: e.color,
                                shape: const OvalBorder(),
                              ),
                            ),
                            horizontalSpaceSmall,
                            DepText(
                              text: e.title,
                              txtColor: gray600,
                              font: 12,
                              fntweight: FontWeight.w400,
                            )
                          ],
                        ),
                      );
                    })),
              )
            ],
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> _chartSections(List<Sector> sectors) {
  final List<PieChartSectionData> list = [];
  for (var sector in sectors) {
    const double radius = 48.0;
    final data = PieChartSectionData(
      color: sector.color,
      value: sector.value,
      radius: radius,
      title: '',
    );
    list.add(data);
  }
  return list;
}
