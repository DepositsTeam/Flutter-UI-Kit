import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase subtleBadge(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Badge/Subtle Badge',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Subtle Badge",
                txtColor: Colors.white,
                font: 18,
              ),
              addBackButton: false,
              addCloseButton: false,
              backgroundColor: primaryColor,
            ),
            body: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: DepTextTagTag(
                text: context.knobs
                    .text(label: 'Subtle Badge', initialValue: 'Subtle Badge'),
                tagFontSize: context.knobs
                    .slider(
                        label: 'Set font-size',
                        initialValue: 12,
                        max: 16,
                        min: 12)
                    .toDouble(),
                backgroundColor: context.knobs.options(
                  label: 'Button Color',
                  description: 'Background color of the badge.',
                  options: const [
                    Option(
                      label: 'Neutral',
                      value: gray700,
                    ),
                    Option(
                      label: 'Green',
                      value: green800,
                    ),
                    Option(
                      label: 'Red',
                      value: red800,
                    ),
                    Option(
                      label: 'Yellow',
                      value: orange800,
                    ),
                    Option(
                      label: 'Cyan',
                      value: cyan800,
                    ),
                    Option(
                      label: 'Blue',
                      value: blue800,
                    ),
                  ],
                ),
              ),
            ),
          ));
}

WidgetbookUseCase solidBadge(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Badge/Solid Badge',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Solid Badge",
                txtColor: Colors.white,
                font: 18,
              ),
              addBackButton: false,
              addCloseButton: false,
              backgroundColor: primaryColor,
            ),
            body: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: DepTextTagTag(
                text: context.knobs
                    .text(label: 'Solid Badge', initialValue: 'Solid Badge'),
                tagFontSize: context.knobs
                    .slider(
                        label: 'Set font-size',
                        initialValue: 12,
                        max: 16,
                        min: 12)
                    .toDouble(),
                isSolid: true,
                backgroundColor: context.knobs.options(
                  label: 'Button Color',
                  description: 'Background color of the badge.',
                  options: const [
                    Option(
                      label: 'Neutral',
                      value: Color(0xff8C97A7),
                    ),
                    Option(
                      label: 'Green',
                      value: greenColor,
                    ),
                    Option(
                      label: 'Red',
                      value: redColor,
                    ),
                    Option(
                      label: 'Yellow',
                      value: orangeColor,
                    ),
                    Option(
                      label: 'Cyan',
                      value: Color(0xff0C9CCC),
                    ),
                    Option(
                      label: 'Blue',
                      value: secondaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ));
}
