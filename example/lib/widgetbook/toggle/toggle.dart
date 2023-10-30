import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit_example/widgetbook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase basicToggle(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Toggle/Basic',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Basic Toggle",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: StatefulBuilder(builder: (context, setState) {
            return Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: DepToggle(
                  onChanged: (val) {},
                  value: true,
                  type: context.knobs.list(
                      label: 'Loader Type',
                      description: 'Select Loader Type',
                      initialOption: DepToggleType.android,
                      labelBuilder: (value) {
                        return getDepToggleTypeLabel(value);
                      },
                      options: depToggleTypeOptions),
                ));
          })));
}
