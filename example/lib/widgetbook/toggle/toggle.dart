import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase BasicToggle(BuildContext context) {
  bool isChecked = false;
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
                  type: context.knobs.options(
                      label: 'Loader Type',
                      description: 'Select Loader Type',
                      options: const [
                        Option(
                          label: 'IOS',
                          value: DepToggleType.ios,
                        ),
                        Option(
                          label: 'Android',
                          value: DepToggleType.android,
                        ),
                        Option(
                          label: 'Square',
                          value: DepToggleType.square,
                        ),
                      ]),
                ));
          })));
}
