import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit_example/widgetbook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase chromaticColors(BuildContext context) {
  return WidgetbookUseCase(
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
                const SizedBox(
                  height: 25,
                ),
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

WidgetbookUseCase cyanColorShades(BuildContext context) {
  return WidgetbookUseCase(
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
              color: context.knobs.list(
                  label: 'Color Shade',
                  description: 'Select Color Shade.',
                  initialOption: cyan400,
                  labelBuilder: (value) {
                    return getCyanColorLabel(value);
                  },
                  options: cyanColorOptions),
            ),
          )));
}

WidgetbookUseCase greenColorShades(BuildContext context) {
  return WidgetbookUseCase(
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
              color: context.knobs.list(
                  label: 'Color Shade',
                  description: 'Select Color Shade.',
                  initialOption: green400,
                  labelBuilder: (value) {
                    return getGreenColorLabel(value);
                  },
                  options: greenColorOptions),
            ),
          )));
}

WidgetbookUseCase orangeColorShades(BuildContext context) {
  return WidgetbookUseCase(
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
              color: context.knobs.list(
                  label: 'Color Shade',
                  description: 'Select Color Shade.',
                  initialOption: orange400,
                  labelBuilder: (value) {
                    return getOrangeColorLabel(value);
                  },
                  options: orangeColorOptions),
            ),
          )));
}

WidgetbookUseCase redColorShades(BuildContext context) {
  return WidgetbookUseCase(
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
              color: context.knobs.list(
                  label: 'Color Shade',
                  description: 'Select Color Shade.',
                  initialOption: red400,
                  labelBuilder: (value) {
                    return getRedColorLabel(value);
                  },
                  options: redColorOptions),
            ),
          )));
}

WidgetbookUseCase blueColorShades(BuildContext context) {
  return WidgetbookUseCase(
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
              color: context.knobs.list(
                label: 'Color Shade',
                description: 'Select Color Shade.',
                initialOption: blue400,
                options: blueColorOptions,
                labelBuilder: (value) {
                  return getBlueColorLabel(value);
                },
              ),
            ),
          )));
}

Widget colorItem({required Color color, required String hex}) {
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
