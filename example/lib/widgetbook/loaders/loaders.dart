import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase BasicLoader(BuildContext context) {
  bool isChecked = false;
  return WidgetbookUseCase(
      name: 'Loader/IOS',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "IOS Loader",
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
                type: context.knobs.options(
                      label: 'Loader Type',
                      description: 'Select Loader Type',
                      options: const [
                        Option(
                          label: 'IOS',
                          value: DepLoaderType.ios,
                        ),
                        Option(
                          label: 'Android',
                          value: DepLoaderType.android,
                        ),
                        Option(
                          label: 'Circle',
                          value: DepLoaderType.circle,
                        ),
                        Option(
                          label: 'Square',
                          value: DepLoaderType.square,
                        ),
                      ]),
                )
              );
          })));
}

WidgetbookUseCase CustomLoader(BuildContext context) {
  bool isChecked = false;
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
                child: DepLoader(
                  type: DepLoaderType.custom,
                  child: Image(image: AssetImage("assets/images/launcher_dark.png")
                ))
            );
          })));
}

WidgetbookUseCase CustomIconsLoader(BuildContext context) {
  bool isChecked = false;
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
                child: DepLoader(
                    type: DepLoaderType.custom,
                    loaderIconOne: Icon(Icons.insert_emoticon),
                  loaderIconTwo: Icon(Icons.insert_emoticon),
                  loaderIconThree: Icon(Icons.insert_emoticon),
                        )
                        );
          })));
}

WidgetbookUseCase CustomTextLoader(BuildContext context) {
  bool isChecked = false;
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
                child: DepLoader(
                  type: DepLoaderType.custom,
                  loaderIconOne: Text('Please'),
                  loaderIconTwo: Text('Wait'),
                  loaderIconThree: Text('a moment'),
                ));
          })));
}
