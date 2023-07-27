import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase AlertIOS(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Alert',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Alerts",
                txtColor: Colors.white,
                font: 18,
              ),
              addBackButton: false,
              addCloseButton: false,
              backgroundColor: primaryColor,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Horizontalsingle action alert
                  DepButton(
                      onPressed: () {
                        DepDialog(
                            context: context,
                            title: 'Alert title',
                            content:
                                'Here’s some alert text. It can span multiple lines if needed!',
                            isActionHorizontal: true,
                            isActionSingle: true);
                      },
                      buttonColor: blue500,
                      title: "Horizontal Single Action Alert",
                      textColor: white),
                  verticalSpaceSmallX,
                  //Horizontal double action alert
                  DepButton(
                      onPressed: () {
                        DepDialog(
                            context: context,
                            title: 'Alert title',
                            content:
                                'Here’s some alert text. It can span multiple lines if needed!',
                            isActionHorizontal: true,
                            isActionSingle: false);
                      },
                      buttonColor: blue500,
                      title: "Horizontal Double Action Alert",
                      textColor: white),
                  verticalSpaceSmallX,
                  //vertical single action alert
                  DepButton(
                      onPressed: () {
                        DepDialog(
                            context: context,
                            title: 'Alert title',
                            content:
                                'Here’s some alert text. It can span multiple lines if needed!',
                            isActionHorizontal: false,
                            isActionSingle: false);
                      },
                      buttonColor: blue500,
                      title: "Vertical Double Action Alert",
                      textColor: white),
                  verticalSpaceSmallX,
                  //vertical double action alert
                  DepButton(
                      onPressed: () {
                        DepDialog(
                            context: context,
                            title: 'Alert title',
                            content:
                                'Here’s some alert text. It can span multiple lines if needed!',
                            isActionHorizontal: false,
                            isActionSingle: true);
                      },
                      buttonColor: blue500,
                      title: "Vertical Triple Action Alert",
                      textColor: white),
                ],
              ),
            ),
          ));
}
