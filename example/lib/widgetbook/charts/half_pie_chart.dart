import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit_example/widgetbook/charts/data/sector.dart';

import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase halfPieChart(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Half-Pie',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Half Pie Chart",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: StatefulBuilder(builder: (context, setState) {
            return DepHalfPieChart(
              icon: Image.asset(
                'assets/images/info.png',
              ),
              sectors: halfSectors,
              primaryText: context.knobs
                  .string(label: 'Primary Text', initialValue: 'PRIMARY TEXT'),
              amount:
                  context.knobs.string(label: 'Amount', initialValue: '5.987,34'),
              secondaryText: context.knobs.string(
                  label: 'Secondary text', initialValue: 'Secondary text'),
            );
          })));
}
