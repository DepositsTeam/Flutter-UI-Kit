import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

Story ChromaticColors(BuildContext context) {
  return Story(
      name: 'Colors/Chromatic Colors',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Chromatic palette",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    colorItem(color: primaryColor, hex: "#0DB9E9"),
                    colorItem(color: secondaryColor, hex: "#0D7FE9")
                  ],
                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    colorItem(color: demoPrimary1Color, hex: "#950DE9"),
                    colorItem(color: demoPrimary2Color, hex: "#66B428")
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    colorItem(color: greenColor, hex: "#24B57A"),
                    colorItem(color: orangeColor, hex: "#FFC06A")
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    colorItem(color: redColor, hex: "#B52424"),
                  ],
                )
              ],
            ),
          )));
}


Story CyanColorShades(BuildContext context) {
  return Story(
      name: 'Colors/Cyan Color Shades',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Cyan Color Shades",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: Center(
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                height: 50,
                color: context.knobs.options(
                label: 'Color Shade',
                initial: cyan100,
                description: 'Select Color Shade.',
                options: const [
                  Option(
                    label: 'cyan100',
                    value: cyan100,
                  ),
                  Option(
                    label: 'cyan200',
                    value: cyan200,
                  ),
                  Option(
                    label: 'cyan300',
                    value: cyan300,
                  ),
                  Option(
                    label: 'cyan400',
                    value: cyan400,
                  ),
                  Option(
                    label: 'cyan500',
                    value: cyan500,
                  ),
                  Option(
                    label: 'cyan600',
                    value: cyan600,
                  ),
                  Option(
                    label: 'cyan700',
                    value: cyan700,
                  ),
                  Option(
                    label: 'cyan800',
                    value: cyan800,
                  ),
                  Option(
                    label: 'cyan900',
                    value: cyan900,
                  ),
                ],
              ),
            ),
          )
          ));
}

Story GreenColorShades(BuildContext context) {
  return Story(
      name: 'Colors/Green Color Shades',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Green Color Shades",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: Center(
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              height: 50,
              color: context.knobs.options(
                label: 'Color Shade',
                initial: green100,
                description: 'Select Color Shade.',
                options: const [
                  Option(
                    label: 'green100',
                    value: green100,
                  ),
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
          )));
}

Story OrangeColorShades(BuildContext context) {
  return Story(
      name: 'Colors/Orange Color Shades',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Orange Color Shades",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: Center(
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              height: 50,
              color: context.knobs.options(
                label: 'Color Shade',
                initial: orange100,
                description: 'Select Color Shade.',
                options: const [
                  Option(
                    label: 'orange100',
                    value: orange100,
                  ),
                  Option(
                    label: 'orange200',
                    value: orange200,
                  ),
                  Option(
                    label: 'orange300',
                    value: orange300,
                  ),
                  Option(
                    label: 'orange400',
                    value: orange400,
                  ),
                  Option(
                    label: 'orange500',
                    value: orange500,
                  ),
                  Option(
                    label: 'orange600',
                    value: orange600,
                  ),
                  Option(
                    label: 'orange700',
                    value: orange700,
                  ),
                  Option(
                    label: 'orange800',
                    value: orange800,
                  ),
                  Option(
                    label: 'orange900',
                    value: orange900,
                  ),
                ],
              ),
            ),
          )));
}

Story RedColorShades(BuildContext context) {
  return Story(
      name: 'Colors/Red Color Shades',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Red Color Shades",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: Center(
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              height: 50,
              color: context.knobs.options(
                label: 'Color Shade',
                initial: red100,
                description: 'Select Color Shade.',
                options: const [
                  Option(
                    label: 'red100',
                    value: red100,
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
          )));
}

Story BlueColorShades(BuildContext context) {
  return Story(
      name: 'Colors/Blue Color Shades',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Blue Color Shades",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: Center(
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              height: 50,
              color: context.knobs.options(
                label: 'Color Shade',
                initial: blue100,
                description: 'Select Color Shade.',
                options: const [
                  Option(
                    label: 'blue100',
                    value: blue100,
                  ),
                  Option(
                    label: 'blue200',
                    value: blue200,
                  ),
                  Option(
                    label: 'blue300',
                    value: blue300,
                  ),
                  Option(
                    label: 'blue400',
                    value: blue400,
                  ),
                  Option(
                    label: 'blue500',
                    value: blue500,
                  ),
                  Option(
                    label: 'blue600',
                    value: blue600,
                  ),
                  Option(
                    label: 'blue700',
                    value: blue700,
                  ),
                  Option(
                    label: 'blue800',
                    value: blue800,
                  ),
                  Option(
                    label: 'blue900',
                    value: blue900,
                  ),
                ],
              ),
            ),
          )));
}

Widget colorItem({required Color color,required String hex}) {
  return SizedBox(
    height: 120,
    width: 100,
    child: Column(
      children: [
        Container(
          height: 90,
          color: color,
        ),
        Container(
            height: 30,
            alignment: Alignment.center,
            color: const Color(0XFFF3F3F3),
            child: DepText(
              text: hex,
              txtColor: black,
              font: 13,
              fntweight: FontWeight.w400,
            ))
      ],
    ),
  );
}
