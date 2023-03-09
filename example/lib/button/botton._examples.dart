import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

Story PrimaryButton(BuildContext context) {
  return Story(
      name: 'Button/Primary Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: DepText(text: "Primary Button", txtColor: Colors.white, font: 18,),
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
                  title: context.knobs.text(label: 'Primary Button', initial: 'Primary Button'),
                  isBusy: context.knobs.boolean(label: 'Show Loading Status', initial: false),
                  showSearchIcon: context.knobs.boolean(label: 'Show search Icon', initial: false),
                  showDropDownIcon: context.knobs.boolean(label: 'Show Dropdown Icon', initial: false),
                  isDisabled: context.knobs.boolean(label: 'Disable Button', initial: false),
                  isButtonCurved: context.knobs.boolean(label: 'Curve Button Borders', initial: false),
                  isResponsive: context.knobs.boolean(label: 'Enable Responsiveness', initial: false),
                  height: 65,
                  textColor: gray700,
                  textFontSize: 18,
                  buttonColor: context.knobs.options(
                  label: 'Button Color',
                  initial: primaryColor,
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

Story DangerButton(BuildContext context) {
  return Story(
      name: 'Button/Danger Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: DepText(text: "Danger Button", txtColor: Colors.white, font: 18,),
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
                  title: context.knobs.text(label: 'Danger Button', initial: 'Danger Button'),
                  isBusy: context.knobs.boolean(label: 'Show Loading Status', initial: false),
                  showSearchIcon: context.knobs
                    .boolean(label: 'Show search Icon', initial: false),
                    showDropDownIcon: context.knobs
                    .boolean(label: 'Show Dropdown Icon', initial: false),
                    isDisabled: context.knobs
                    .boolean(label: 'Disable Button', initial: false),
                    isButtonCurved: context.knobs
                    .boolean(label: 'Curve Button Borders', initial: false),
                  isResponsive: context.knobs
                    .boolean(label: 'Enable Responsiveness', initial: false),
                  height: 65,
                  textFontSize: 18,
                  textColor: white,
                  buttonColor: context.knobs.options(
                  label: 'Button Color',
                  initial: redColor,
                  description: 'Background color of the button.',
                  options: const [
                    Option(
                      label: 'red100',
                      value: red100
                    ),
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

Story SuccessButton(BuildContext context) {
  return Story(
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
                title: context.knobs
                    .text(label: 'Success Button', initial: 'Success Button'),
                isBusy: context.knobs
                    .boolean(label: 'Show Loading Status', initial: false),
                showSearchIcon: context.knobs
                    .boolean(label: 'Show search Icon', initial: false),
                showDropDownIcon: context.knobs
                    .boolean(label: 'Show Dropdown Icon', initial: false),
                isDisabled: context.knobs
                    .boolean(label: 'Disable Button', initial: false),
                isButtonCurved: context.knobs
                    .boolean(label: 'Curve Button Borders', initial: false),
                isResponsive: context.knobs
                    .boolean(label: 'Enable Responsiveness', initial: false),
                height: 65,
                textFontSize: 18,
                textColor: white,
                buttonColor: context.knobs.options(
                  label: 'Button Color',
                  initial: greenColor,
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

Story DefaultButton(BuildContext context) {
  return Story(
      name: 'Button/Default Button',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: DepText(
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
                title: context.knobs
                    .text(label: 'Default Button', initial: 'Default Button'),
                isBusy: context.knobs
                    .boolean(label: 'Show Loading Status', initial: false),
                showSearchIcon: context.knobs
                    .boolean(label: 'Show search Icon', initial: false),
                showDropDownIcon: context.knobs
                    .boolean(label: 'Show Dropdown Icon', initial: false),
                isDisabled: context.knobs
                    .boolean(label: 'Disable Button', initial: false),
                isButtonCurved: context.knobs
                    .boolean(label: 'Curve Button Borders', initial: false),
                isResponsive: context.knobs
                    .boolean(label: 'Enable Responsiveness', initial: false),
                height: 65,
                textFontSize: 18,
                textColor: gray700,
                addBorder: context.knobs.boolean(label: 'Add Border', initial: false),
                buttonBorderColor: gray300,
                buttonColor: context.knobs.options(
                  label: 'Button Color',
                  initial: gray100,
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

Story InvincibleButton(BuildContext context) {
  return Story(
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
                title: context.knobs
                    .text(label: 'Invincible Button', initial: 'Invincible Button'),
                isBusy: context.knobs
                    .boolean(label: 'Show Loading Status', initial: false),
                showSearchIcon: context.knobs
                    .boolean(label: 'Show search Icon', initial: false),
                showDropDownIcon: context.knobs
                    .boolean(label: 'Show Dropdown Icon', initial: false),
                isDisabled: context.knobs
                    .boolean(label: 'Disable Button', initial: false),
                isButtonCurved: context.knobs
                    .boolean(label: 'Curve Button Borders', initial: false),
                isResponsive: context.knobs
                    .boolean(label: 'Enable Responsiveness', initial: false),
                height: 65,
                textFontSize: 18,
                textColor: secondaryColor,
                addBorder: context.knobs
                    .boolean(label: 'Add Border', initial: false),
                buttonBorderColor: secondaryColor,
                buttonColor: context.knobs.options(
                  label: 'Button Color',
                  initial: transparent,
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

Story OutlineButton(BuildContext context) {
  return Story(
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
                title: context.knobs
                    .text(label: 'Outline Button', initial: 'Outline Button'),
                isBusy: context.knobs
                    .boolean(label: 'Show Loading Status', initial: false),
                showSearchIcon: context.knobs
                    .boolean(label: 'Show search Icon', initial: false),
                showDropDownIcon: context.knobs
                    .boolean(label: 'Show Dropdown Icon', initial: false),
                isDisabled: context.knobs
                    .boolean(label: 'Disable Button', initial: false),
                isButtonCurved: context.knobs
                    .boolean(label: 'Curve Button Borders', initial: false),
                isResponsive: context.knobs
                    .boolean(label: 'Enable Responsiveness', initial: false),
                height: 65,
                textFontSize: 18,
                textColor: secondaryColor,
                addBorder: context.knobs.boolean(label: 'Add Border', initial: false),
                buttonBorderColor: secondaryColor,
                buttonColor: context.knobs.options(
                  label: 'Button Color',
                  initial: transparent,
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
