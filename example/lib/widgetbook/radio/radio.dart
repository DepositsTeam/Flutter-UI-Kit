import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

int groupValue = 0;
String imageUrl =
    "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250";

WidgetbookUseCase RadioLabel(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Radio/Basic',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Radio button",
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
                  child: DepRadio(
                    size: DepSize.SMALL,
                    value: 2,
                    toggleable: true,
                    type: context.knobs.options(
                        label: 'Circle Shaoe',
                        description: 'Radio Type',
                        options: const [
                          Option(
                            label: 'Basic',
                            value: DepRadioType.basic,
                          ),
                          Option(
                            label: 'Square',
                            value: DepRadioType.square,
                          ),
                          Option(
                            label: 'Blunt',
                            value: DepRadioType.blunt,
                          ),
                        ]),
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value;
                      });
                    },
                  ));
            }),
          ));
}

WidgetbookUseCase RadioListTileLabel(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Radio/ListTile',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Radio List Tile",
                txtColor: Colors.white,
                font: 18,
              ),
              addBackButton: false,
              addCloseButton: false,
              backgroundColor: primaryColor,
            ),
            body: Center(
              child: StatefulBuilder(builder: (context, setState) {
                return Container(
                  height: 80,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: DepRadioListTile(
                    titleText: 'Arthur Shelby',
                    subTitleText: 'By order of the peaky blinders',
                    avatar: DepAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                    size: 25,
                    value: 0,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value;
                      });
                    },
                  ),
                );
              }),
            ),
          ));
}

WidgetbookUseCase CheckLabel(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Checkbox/Basic',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Checkbox",
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
            ),
          ));
}
