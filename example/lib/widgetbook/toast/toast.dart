import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase titleToast(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Toast/Title Toast',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Title Toast",
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //info toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              context: context,
                              msg: "A simple general message",
                              toastType: ToastType.general);
                        },
                        buttonColor: gray200,
                        title: "Info Toast",
                        textColor: white),
                    //info toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              context: context,
                              msg: "This is an info alert ",
                              toastType: ToastType.info);
                        },
                        buttonColor: blue500,
                        title: "Info Toast",
                        textColor: white),
                    //Woarning toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              context: context,
                              msg: "This is an warning alert ",
                              toastType: ToastType.warning);
                        },
                        buttonColor: orange600,
                        title: "Warning Toast",
                        textColor: white),
                    //Danger toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              context: context,
                              msg: "This is an error alert ",
                              toastType: ToastType.error);
                        },
                        buttonColor: red500,
                        title: "Error Toast",
                        textColor: white),
                    //Success toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              context: context,
                              msg: "This is an success alert ",
                              toastType: ToastType.success);
                        },
                        buttonColor: green600,
                        title: "Success Toast",
                        textColor: white),
                  ],
                )),
          ));
}

WidgetbookUseCase titleIndicatorToast(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Toast/Title Indicator Toast',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Title Indicator Toast",
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //info toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              isLeftIndicatorPresent: true,
                              context: context,
                              msg: "A simple general message",
                              toastType: ToastType.general);
                        },
                        buttonColor: gray200,
                        title: "Info Toast",
                        textColor: white),
                    //info toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              isLeftIndicatorPresent: true,
                              context: context,
                              msg: "This is an info alert ",
                              toastType: ToastType.info);
                        },
                        buttonColor: blue500,
                        title: "Info Toast",
                        textColor: white),
                    //Woarning toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              isLeftIndicatorPresent: true,
                              context: context,
                              msg: "This is an warning alert ",
                              toastType: ToastType.warning);
                        },
                        buttonColor: orange600,
                        title: "Warning Toast",
                        textColor: white),
                    //Danger toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              isLeftIndicatorPresent: true,
                              context: context,
                              msg: "This is an error alert ",
                              toastType: ToastType.error);
                        },
                        buttonColor: red500,
                        title: "Error Toast",
                        textColor: white),
                    //Success toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              isLeftIndicatorPresent: true,
                              context: context,
                              msg: "This is an success alert ",
                              toastType: ToastType.success);
                        },
                        buttonColor: green600,
                        title: "Success Toast",
                        textColor: white),
                  ],
                )),
          ));
}

WidgetbookUseCase titleMgsToast(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Toast/Title & Message Toast',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Title & Message Toast",
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //info toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              context: context,
                              title: "A simple general message",
                              msg:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              toastType: ToastType.general);
                        },
                        buttonColor: gray200,
                        title: "Info Toast",
                        textColor: white),
                    //info toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              context: context,
                              title: "This is an info alert ",
                              msg:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              toastType: ToastType.info);
                        },
                        buttonColor: blue500,
                        title: "Info Toast",
                        textColor: white),
                    //Woarning toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              context: context,
                              title: "This is an warning alert ",
                              msg:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              toastType: ToastType.warning);
                        },
                        buttonColor: orange600,
                        title: "Warning Toast",
                        textColor: white),
                    //Danger toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              context: context,
                              title: "This is an error alert ",
                              msg:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              toastType: ToastType.error);
                        },
                        buttonColor: red500,
                        title: "Error Toast",
                        textColor: white),
                    //Success toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              context: context,
                              title: "This is an success alert ",
                              msg:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              toastType: ToastType.success);
                        },
                        buttonColor: green600,
                        title: "Success Toast",
                        textColor: white),
                  ],
                )),
          ));
}

WidgetbookUseCase indicatorToast(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Toast/Left Indicator Toast',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Left Indicator Toast",
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //info toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              isLeftIndicatorPresent: true,
                              context: context,
                              title: "A simple general message",
                              msg:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              toastType: ToastType.general);
                        },
                        buttonColor: gray200,
                        title: "Info Toast",
                        textColor: white),
                    //info toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              isLeftIndicatorPresent: true,
                              context: context,
                              title: "This is an info alert ",
                              msg:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              toastType: ToastType.info);
                        },
                        buttonColor: blue500,
                        title: "Info Toast",
                        textColor: white),
                    //Woarning toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              isLeftIndicatorPresent: true,
                              context: context,
                              title: "This is an warning alert ",
                              msg:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              toastType: ToastType.warning);
                        },
                        buttonColor: orange600,
                        title: "Warning Toast",
                        textColor: white),
                    //Danger toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              isLeftIndicatorPresent: true,
                              context: context,
                              title: "This is an error alert ",
                              msg:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              toastType: ToastType.error);
                        },
                        buttonColor: red500,
                        title: "Error Toast",
                        textColor: white),
                    //Success toast
                    DepButton(
                        onPressed: () {
                          depToast(
                              isLeftIndicatorPresent: true,
                              context: context,
                              title: "This is an success alert ",
                              msg:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              toastType: ToastType.success);
                        },
                        buttonColor: green600,
                        title: "Success Toast",
                        textColor: white),
                  ],
                )),
          ));
}
