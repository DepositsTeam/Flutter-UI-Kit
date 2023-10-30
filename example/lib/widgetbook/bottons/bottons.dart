import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit_example/widgetbook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase primaryButton(BuildContext context) {
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
                title: context.knobs.string(
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
                buttonColor: context.knobs.list(
                  label: 'Button Color',
                  description: 'Background color of the button.',
                  initialOption: cyan400,
                  options: cyanColorOptions,
                  labelBuilder: (value) {
                    return getCyanColorLabel(value);
                  },
                ),
              ),
            ),
          ));
}

WidgetbookUseCase defaultButton(BuildContext context) {
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
                title: context.knobs.string(
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
                buttonColor: context.knobs.list(
                  label: 'Button Color',
                  description: 'Background color of the button.',
                  initialOption: gray400,
                  options: grayColorOptions,
                  labelBuilder: (value) {
                    return getGrayColorLabel(value);
                  },
                ),
              ),
            ),
          ));
}

WidgetbookUseCase dangerButton(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Button/Danger Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
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
                title: context.knobs.string(
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
                buttonColor: context.knobs.list(
                    label: 'Button Color',
                    description: 'Background color of the button.',
                    initialOption: red500,
                    labelBuilder: (value) {
                      return getRedColorLabel(value);
                    },
                    options: redColorOptions),
              ),
            ),
          ));
}

WidgetbookUseCase successButton(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Button/Success Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
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
                title: context.knobs.string(
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
                buttonColor: context.knobs.list(
                    initialOption: green500,
                    label: 'Button Color',
                    description: 'Background color of the button.',
                    labelBuilder: (value) {
                      return getGreenColorLabel(value);
                    },
                    options: greenColorOptions),
              ),
            ),
          ));
}

WidgetbookUseCase invincibleButton(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Button/Invincible Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
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
                title: context.knobs.string(
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
                buttonColor: context.knobs.list(
                    label: 'Button Color',
                    description: 'Background color of the button.',
                    initialOption: transparent,
                    labelBuilder: (value) {
                      return getInvincibleButtonColorLabel(value);
                    },
                    options: invincibleButtonColorOptions),
              ),
            ),
          ));
}

WidgetbookUseCase outlineButton(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Button/Outline Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
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
                title: context.knobs.string(
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
                buttonColor: context.knobs.list(
                  label: 'Button Color',
                  description: 'Background color of the button.',
                  initialOption: transparent,
                  options: outlineButtonColorOptions,
                ),
              ),
            ),
          ));
}

WidgetbookUseCase filledSocialButton(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Filled Social Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
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
                      text: context.knobs.string(
                          label: 'Filled Button',
                          initialValue: 'Filled Button'),
                      icon: const Icon(Icons.facebook),
                      type: context.knobs.list(
                          label: 'Button Type',
                          description: 'Select Button Type',
                          initialOption: DepButtonType.solid,
                          labelBuilder: (value) {
                            return getDepButtonTypeTypeLabel(value);
                          },
                          options: depButtonTypeTypeOptions),
                      shape: context.knobs.list(
                          label: 'Button Shape',
                          description: 'Select Button Shape',
                          initialOption: DepButtonShape.pills,
                          labelBuilder: (value) {
                            return getDepButtonShapeTypeLabel(value);
                          },
                          options: depButtonShapeeOptions)),
                ],
              ),
            ),
          ));
}

WidgetbookUseCase outlinedSocialButton(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Outlined Social Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
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
                    icon: const Icon(Icons.facebook),
                    size: context.knobs.list(
                      label: 'Icon Size',
                      description: 'Select icon size',
                      initialOption: DepSize.small,
                      options: depSizeTypeOptions,
                      labelBuilder: (value) {
                        return getDepSizeTypeLabel(value);
                      },
                    ), //DepSize.SMALL,
                    type: context.knobs.list(
                        label: 'Button Type',
                        description: 'Select button type',
                        initialOption: DepButtonType.solid,
                        labelBuilder: (value) {
                          return getDepButtonTypeTypeLabel(value);
                        },
                        options:
                            depButtonTypeTypeOptions), //DepButtonType.outline,
                    shape: DepIconButtonShape.pills,
                  ),
                ],
              ),
            ),
          ));
}
