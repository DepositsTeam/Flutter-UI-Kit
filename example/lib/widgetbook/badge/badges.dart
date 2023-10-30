import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit_example/widgetbook/constants/constants.dart';
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
                    .string(label: 'Subtle Badge', initialValue: 'Subtle Badge'),
                tagFontSize: context.knobs
                    .doubleOrNull
                    .slider(
                        label: 'Set font-size',
                        initialValue: 12,
                        max: 16,
                        min: 12),
                backgroundColor: context.knobs.list(
                  label: 'Button Color',
                  description: 'Background color of the badge.',
                  initialOption: cyan200,
                  labelBuilder: (value) {
                    return getSubtleColorLabel(value);
                  },
                  options: subtleColorOptions,
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
                    .string(label: 'Solid Badge', initialValue: 'Solid Badge'),
                tagFontSize: context.knobs
                    .doubleOrNull
                    .slider(
                        label: 'Set font-size',
                        initialValue: 12,
                        max: 16,
                        min: 12),
                isSolid: true,
                backgroundColor: context.knobs.list(
                  label: 'Button Color',
                  description: 'Background color of the badge.',
                  initialOption: cyan700,
                  labelBuilder: (value) {
                    return getSolidColorLabel(value);
                  },
                  options: solidColorOptions,
                ),
              ),
            ),
          ));
}
