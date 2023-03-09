import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

Story SubtleBadge(BuildContext context) {
  return Story(
      name: 'Badge/Subtle Badge',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: DepText(
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
                    .text(label: 'Subtle Badge', initial: 'Subtle Badge'),
                tagFontSize: context.knobs.sliderInt(label: 'Set font-size', initial: 18, max: 25, min: 16 ).toDouble(),
                backgroundColor: context.knobs.options(
                  label: 'Button Color',
                  initial: primaryColor,
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

Story SolidBadge(BuildContext context) {
  return Story(
      name: 'Badge/Solid Badge',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: DepText(
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
                    .text(label: 'Solid Badge', initial: 'Solid Badge'),
                tagFontSize: context.knobs
                    .sliderInt(
                        label: 'Set font-size', initial: 18, max: 25, min: 16)
                    .toDouble(),
                isSolid: true,
                backgroundColor: context.knobs.options(
                  label: 'Button Color',
                  initial: primaryColor,
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
