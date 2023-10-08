import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit_example/widgetbook/charts/data/sector.dart';

import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase lineChart(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Single Line',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Single Line Chart",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: StatefulBuilder(builder: (context, setState) {
            return DepLineChart(
              icon: Image.asset(
                'assets/images/info.png',
              ),
              points: pricePoints,
              primaryText: context.knobs
                  .text(label: 'Primary Text', initialValue: 'PRIMARY TEXT'),
              amount:
                  context.knobs.text(label: 'Amount', initialValue: '5.987,34'),
              secondaryText: context.knobs.text(
                  label: 'Secondary text', initialValue: 'Secondary text'),
            );
          })));
}
