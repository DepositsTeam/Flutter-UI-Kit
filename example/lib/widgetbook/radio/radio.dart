import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit_example/widgetbook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

int groupValue = 0;
String imageUrl =
    "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250";

WidgetbookUseCase radioLabel(BuildContext context) {
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
                    size: DepSize.small,
                    value: 2,
                    toggleable: true,
                    type: context.knobs.list(
                        label: 'Circle Shaoe',
                        description: 'Radio Type',
                        initialOption: DepRadioType.basic,
                        labelBuilder: (value) {
                          return getDepRadioTypeLabel(value);
                        },
                        options: depRadioTypeOptions),
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

WidgetbookUseCase radioListTileLabel(BuildContext context) {
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

WidgetbookUseCase checkLabel(BuildContext context) {
  bool isChecked = false;
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
          body: StatefulBuilder(builder: (context, setState) {
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: DepCheckbox(
                size: context.knobs.list(
                    label: 'Checkbox Size',
                    description: 'Select Checkbox Size',
                    initialOption: DepSize.small,
                    labelBuilder: (value) {
                      return getDepSizeTypeLabel(value);
                    },
                    options: depSizeTypeOptions),
                activeBgColor: context.knobs.list(
                    label: 'Active Background Color',
                    description: 'Select Active Background Color',
                    initialOption: redColor,
                    labelBuilder: (value) {
                      return getcheckLabelColorLabel(value);
                    },
                    options: checkLabelColorOptions),
                type: context.knobs.list(
                    label: 'Check Type',
                    description: 'Select Check Type',
                    initialOption: DepCheckboxType.basic,
                    labelBuilder: (value) {
                      return getDepCheckboxTypeLabel(value);
                    },
                    options: depCheckboxTypeOptions),
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
                value: isChecked,
              ),
            );
          })));
}
