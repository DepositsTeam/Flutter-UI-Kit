import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit_example/widgetbook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase basicLoader(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Loader/Basic',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Basic Loader",
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
                child: DepLoader(
                  type: context.knobs.list(
                      label: 'Loader Type',
                      description: 'Select Loader Type',
                      initialOption: DepLoaderType.android,
                      labelBuilder: (value) {
                        return getDepLoaderTypeLabel(value);
                      },
                      options: depLoaderTypeOptions),
                ));
          })));
}

WidgetbookUseCase customLoader(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Loader/Custom Image/Gif',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Custom Image/Gif Loader",
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
                child: const DepLoader(
                    type: DepLoaderType.custom,
                    child: Image(
                        image: AssetImage("assets/images/launcher_dark.png"))));
          })));
}

WidgetbookUseCase customIconsLoader(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Loader/Custom Icons',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Custom Icons Loader",
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
                child: const DepLoader(
                  type: DepLoaderType.custom,
                  loaderIconOne: Icon(Icons.insert_emoticon),
                  loaderIconTwo: Icon(Icons.insert_emoticon),
                  loaderIconThree: Icon(Icons.insert_emoticon),
                ));
          })));
}

WidgetbookUseCase customTextLoader(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Loader/Custom Text',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Custom Text Loader",
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
                child: const DepLoader(
                  type: DepLoaderType.custom,
                  loaderIconOne: Text('Please'),
                  loaderIconTwo: Text('Wait'),
                  loaderIconThree: Text('a moment'),
                ));
          })));
}
