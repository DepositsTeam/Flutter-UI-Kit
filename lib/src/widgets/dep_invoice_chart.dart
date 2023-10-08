import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DepInvoiceChart extends StatefulWidget {
  final List<Sector> sectors;
  final Widget icon;
  final String total, amount;
  const DepInvoiceChart(
      {super.key,
      required this.icon,
      required this.total,
      required this.amount,
      required this.sectors});

  @override
  State<DepInvoiceChart> createState() => _DepInvoiceChartState();
}

class _DepInvoiceChartState extends State<DepInvoiceChart> {
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
                const DepText(
                  text: 'Invoices',
                  txtColor: Color(0xFF2A2E33),
                  font: 16,
                  fntweight: FontWeight.w500,
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
                    child: Stack(
                      children: [
                        PieChart(PieChartData(
                          sections: _chartSections(widget.sectors),
                          centerSpaceRadius: 48.0,
                          sectionsSpace: 1,
                        )),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DepText(
                                text: widget.total,
                                txtAlign: TextAlign.center,
                                txtColor: const Color(0xFF2A2E33),
                                font: 36,
                                fntweight: FontWeight.w700,
                              ),
                              Opacity(
                                opacity: 0.85,
                                child: DepText(
                                  text: widget.amount,
                                  txtAlign: TextAlign.center,
                                  txtColor: const Color(0xFF6D7786),
                                  font: 12,
                                  fntweight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
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
                              width: 7.27,
                              height: 7.27,
                              decoration: ShapeDecoration(
                                color: data.color,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.54),
                                ),
                              ),
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
