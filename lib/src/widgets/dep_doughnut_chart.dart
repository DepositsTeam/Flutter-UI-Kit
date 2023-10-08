import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DepDoughnutChart extends StatefulWidget {
  final List<Sector> sectors;
  final String primaryText, amount, secondaryText;
  final Widget icon;
  const DepDoughnutChart(
      {super.key,
      required this.icon,
      required this.sectors,
      required this.amount,
      required this.primaryText,
      required this.secondaryText});

  @override
  State<DepDoughnutChart> createState() => _DepDoughnutChartState();
}

class _DepDoughnutChartState extends State<DepDoughnutChart> {
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
                      txtColor: Color(0xFF2A2E33),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: AspectRatio(
                    aspectRatio: 1.0,
                    child: PieChart(PieChartData(
                      sections: _chartSections(widget.sectors),
                      centerSpaceRadius: 48.0,
                      sectionsSpace: 0,
                    ))),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: widget.sectors.length,
                    itemBuilder: (_, i) {
                      var data = widget.sectors[i];
                      return Padding(
                        padding: const EdgeInsets.only(top: 10, left: 30),
                        child: Row(
                          children: [
                            Container(
                              width: 21,
                              height: 8,
                              decoration: BoxDecoration(color: data.color),
                            ),
                            horizontalSpaceSmall,
                            DepText(
                              text: data.title,
                              txtColor: gray600,
                              font: 12,
                              fntweight: FontWeight.w400,
                            )
                          ],
                        ),
                      );
                    }),
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
