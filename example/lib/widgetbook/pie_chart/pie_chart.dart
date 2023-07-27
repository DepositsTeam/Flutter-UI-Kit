import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase pieChart(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Button/Primary Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Primary Button",
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
              child: DepButton(
                onPressed: () {},
                title: context.knobs.text(
                    label: 'Primary Button', initialValue: 'Primary Button'),
                isBusy: context.knobs
                    .boolean(label: 'Show Loading Status', initialValue: false),
                showSearchIcon: context.knobs
                    .boolean(label: 'Show search Icon', initialValue: false),
                showDropDownIcon: context.knobs
                    .boolean(label: 'Show Dropdown Icon', initialValue: false),
                isDisabled: context.knobs
                    .boolean(label: 'Disable Button', initialValue: false),
                isButtonCurved: context.knobs.boolean(
                    label: 'Curve Button Borders', initialValue: false),
                isResponsive: context.knobs.boolean(
                    label: 'Enable Responsiveness', initialValue: false),
                height: 65,
                textColor: gray700,
                textFontSize: 18,
                buttonColor: context.knobs.options(
                  label: 'Button Color',
                  description: 'Background color of the button.',
                  options: const [
                    Option(
                      label: 'Cyan500',
                      value: cyan500,
                    ),
                    Option(
                      label: 'Cyan100',
                      value: cyan100,
                    ),
                    Option(
                      label: 'Cyan200',
                      value: cyan200,
                    ),
                    Option(
                      label: 'Cyan300',
                      value: cyan300,
                    ),
                    Option(
                      label: 'Cyan400',
                      value: cyan400,
                    ),
                    Option(
                      label: 'Cyan600',
                      value: cyan600,
                    ),
                    Option(
                      label: 'Cyan700',
                      value: cyan700,
                    ),
                    Option(
                      label: 'Cyan800',
                      value: cyan800,
                    ),
                    Option(
                      label: 'Cyan900',
                      value: cyan900,
                    ),
                  ],
                ),
              ),
            ),
          ));
}
