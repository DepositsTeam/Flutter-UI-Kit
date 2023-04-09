import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase PrimaryButton(BuildContext context) {
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
                      label: 'Cyan500',
                      value: cyan500,
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

WidgetbookUseCase DefaultButton(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Button/Default Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Default Button",
                txtColor: gray700,
                font: 18,
              ),
              addBackButton: false,
              addCloseButton: false,
              backgroundColor: gray100,
            ),
            body: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: DepButton(
                onPressed: () {},
                title: context.knobs.text(
                    label: 'Default Button', initialValue: 'Default Button'),
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
                textFontSize: 18,
                textColor: gray700,
                addBorder: context.knobs
                    .boolean(label: 'Add Border', initialValue: false),
                buttonBorderColor: gray300,
                buttonColor: context.knobs.options(
                  label: 'Button Color',
                  description: 'Background color of the button.',
                  options: const [
                    Option(
                      label: 'neutral100',
                      value: gray100,
                    ),
                    Option(
                      label: 'neutral200',
                      value: gray200,
                    ),
                    Option(
                      label: 'neutral300',
                      value: gray300,
                    ),
                    Option(
                      label: 'neutral400',
                      value: gray400,
                    ),
                  ],
                ),
              ),
            ),
          ));
}

WidgetbookUseCase DangerButton(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Button/Danger Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: DepText(
                text: "Danger Button",
                txtColor: Colors.white,
                font: 18,
              ),
              addBackButton: false,
              addCloseButton: false,
              backgroundColor: redColor,
            ),
            body: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: DepButton(
                onPressed: () {},
                title: context.knobs.text(
                    label: 'Danger Button', initialValue: 'Danger Button'),
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
                textFontSize: 18,
                textColor: white,
                buttonColor: context.knobs.options(
                  label: 'Button Color',
                  description: 'Background color of the button.',
                  options: const [
                    Option(label: 'red100', value: red100),
                    Option(
                      label: 'red200',
                      value: red200,
                    ),
                    Option(
                      label: 'red300',
                      value: red300,
                    ),
                    Option(
                      label: 'red400',
                      value: red400,
                    ),
                    Option(
                      label: 'red500',
                      value: red500,
                    ),
                    Option(
                      label: 'red600',
                      value: red600,
                    ),
                    Option(
                      label: 'red700',
                      value: red700,
                    ),
                    Option(
                      label: 'red800',
                      value: red800,
                    ),
                    Option(
                      label: 'red900',
                      value: red900,
                    ),
                  ],
                ),
              ),
            ),
          ));
}

WidgetbookUseCase SuccessButton(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Button/Success Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: DepText(
                text: "Success Button",
                txtColor: Colors.white,
                font: 18,
              ),
              addBackButton: false,
              addCloseButton: false,
              backgroundColor: greenColor,
            ),
            body: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: DepButton(
                onPressed: () {},
                title: context.knobs.text(
                    label: 'Success Button', initialValue: 'Success Button'),
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
                textFontSize: 18,
                textColor: white,
                buttonColor: context.knobs.options(
                  label: 'Button Color',
                  description: 'Background color of the button.',
                  options: const [
                    Option(label: 'green100', value: green100),
                    Option(
                      label: 'green200',
                      value: green200,
                    ),
                    Option(
                      label: 'green300',
                      value: green300,
                    ),
                    Option(
                      label: 'green400',
                      value: green400,
                    ),
                    Option(
                      label: 'green500',
                      value: green500,
                    ),
                    Option(
                      label: 'green600',
                      value: green600,
                    ),
                    Option(
                      label: 'green700',
                      value: green700,
                    ),
                    Option(
                      label: 'green800',
                      value: green800,
                    ),
                    Option(
                      label: 'green900',
                      value: green900,
                    ),
                  ],
                ),
              ),
            ),
          ));
}

WidgetbookUseCase InvincibleButton(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Button/Invincible Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: DepText(
                text: "Invincible Button",
                txtColor: secondaryColor,
                font: 18,
              ),
              addBackButton: false,
              addCloseButton: false,
              backgroundColor: white,
            ),
            body: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: DepButton(
                onPressed: () {},
                title: context.knobs.text(
                    label: 'Invincible Button',
                    initialValue: 'Invincible Button'),
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
                textFontSize: 18,
                textColor: secondaryColor,
                addBorder: context.knobs
                    .boolean(label: 'Add Border', initialValue: false),
                buttonBorderColor: secondaryColor,
                buttonColor: context.knobs.options(
                  label: 'Button Color',
                  description: 'Background color of the button.',
                  options: const [
                    Option(
                      label: 'transparent',
                      value: transparent,
                    ),
                    Option(
                      label: 'white',
                      value: white,
                    )
                  ],
                ),
              ),
            ),
          ));
}

WidgetbookUseCase OutlineButton(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Button/Outline Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: DepText(
                text: "Outline Button",
                txtColor: white,
                font: 18,
              ),
              addBackButton: false,
              addCloseButton: false,
              backgroundColor: secondaryColor,
            ),
            body: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: DepButton(
                onPressed: () {},
                title: context.knobs.text(
                    label: 'Outline Button', initialValue: 'Outline Button'),
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
                textFontSize: 18,
                textColor: secondaryColor,
                addBorder: context.knobs
                    .boolean(label: 'Add Border', initialValue: false),
                buttonBorderColor: secondaryColor,
                buttonColor: context.knobs.options(
                  label: 'Button Color',
                  description: 'Background color of the button.',
                  options: const [
                    Option(
                      label: 'transparent',
                      value: transparent,
                    ),
                    Option(
                      label: 'white',
                      value: white,
                    ),
                    Option(
                      label: 'secondary',
                      value: secondaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ));
}

WidgetbookUseCase FilledSocialButton(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Filled Social Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: DepText(
                text: "Filled Social Button",
                txtColor: white,
                font: 18,
              ),
              addBackButton: false,
              addCloseButton: false,
              backgroundColor: secondaryColor,
            ),
            body: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DepNormalButton(
                      onPressed: () {},
                      text: context.knobs.text(
                          label: 'Filled Button',
                          initialValue: 'Filled Button'),
                      icon: Icon(Icons.facebook),
                      type: context.knobs.options(
                          label: 'Button Type',
                          description: 'Select Button Type',
                          options: const [
                            Option(
                              label: 'Solid',
                              value: DepButtonType.solid,
                            ),
                            Option(
                              label: 'Outline',
                              value: DepButtonType.outline,
                            ),
                            Option(
                              label: 'Outline2x',
                              value: DepButtonType.outline2x,
                            ),
                            Option(
                              label: 'Transparent',
                              value: DepButtonType.transparent,
                            ),
                          ]),
                      shape: context.knobs.options(
                          label: 'Button Shape',
                          description: 'Select Button Shape',
                          options: const [
                            Option(
                              label: 'Pills',
                              value: DepButtonShape.pills,
                            ),
                            Option(
                              label: 'Standard',
                              value: DepButtonShape.standard,
                            ),
                            Option(
                              label: 'Square',
                              value: DepButtonShape.square,
                            ),
                          ])),
                ],
              ),
            ),
          ));
}

WidgetbookUseCase OutlinedSocialButton(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Outlined Social Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: DepText(
                text: "Outlined Social Button",
                txtColor: white,
                font: 18,
              ),
              addBackButton: false,
              addCloseButton: false,
              backgroundColor: secondaryColor,
            ),
            body: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DepIconButton(
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                    size: context.knobs.options(
                          label: 'Icon Size',
                          description: 'Select icon size',
                          options: const [
                            Option(
                              label: 'Small',
                              value: DepSize.SMALL,
                            ),
                            Option(
                              label: 'Medium',
                              value: DepSize.MEDIUM
                            ),
                            Option(
                              label: 'Large',
                              value: DepSize.LARGE,
                            ),
                          ]),//DepSize.SMALL,
                    type: context.knobs.options(
                        label: 'Button Type',
                        description: 'Select button type',
                        options: const [
                          Option(
                            label: 'Solid',
                            value: DepButtonType.solid,
                          ),
                          Option(label: 'Outline', value: DepButtonType.outline),
                          Option(
                            label: 'Outline2x',
                            value: DepButtonType.outline2x
                          ),
                          Option(
                            label: 'Transparent',
                            value: DepButtonType.transparent
                          ),
                        ]), //DepButtonType.outline,
                    shape: DepIconButtonShape.pills,
                  ),
                ],
              ),
            ),
          ));
}
