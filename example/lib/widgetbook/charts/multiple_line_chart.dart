import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit_example/widgetbook/charts/data/sector.dart';

import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase multipleLineChart(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Multiple Line',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Multiple Line Chart",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: StatefulBuilder(builder: (context, setState) {
            return DepMultipleLineChart(
              icon: Image.asset(
                'assets/images/info.png',
              ),
              points: pricePoints,
              primaryText: context.knobs
                  .string(label: 'Primary Text', initialValue: 'PRIMARY TEXT'),
              amount:
                  context.knobs.string(label: 'Amount', initialValue: '5.987,34'),
              secondaryText: context.knobs.string(
                  label: 'Secondary text', initialValue: 'Secondary text'),
            );
          })));
}
