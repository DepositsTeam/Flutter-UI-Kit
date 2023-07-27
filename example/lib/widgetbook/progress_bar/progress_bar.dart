import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

WidgetbookUseCase progressBar(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Progress Bar',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Progress Bar",
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearProgressBar(
                      maxSteps: 5,
                      progressType: LinearProgressBar.progressTypeLinear,
                      currentStep: context.knobs
                          .slider(
                            label: 'Progress',
                            description: 'Select Step',
                            initialValue: 1,
                            max: 5,
                            min: 1,
                          )
                          .toInt(),
                      progressColor: primaryColor,
                      backgroundColor: gray300,
                    ),
                    verticalSpaceSmallX,
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Color(0xFF8C97A7),
                          fontSize: 14,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.40,
                        ),
                        children: <TextSpan>[
                          const TextSpan(text: 'Step '),
                          TextSpan(
                            text: context.knobs
                                .slider(
                                  label: 'Progress',
                                  description: 'Select Step',
                                  initialValue: 1,
                                  max: 5,
                                  min: 1,
                                )
                                .round()
                                .toString(),
                          ),
                          const TextSpan(text: ' of '),
                          const TextSpan(
                            text: '5',
                          )
                        ],
                      ),
                    ),
                    verticalSpaceSmallX,
                    DepText(
                      font: 20,
                      fntweight: FontWeight.w400,
                      text: context.knobs
                          .text(label: 'Enter Title', initialValue: 'Title'),
                    )
                  ]))));
}
