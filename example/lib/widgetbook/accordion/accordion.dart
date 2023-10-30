import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase basicAccordion(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Accordion/Basic',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Basic Accordion",
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
                  children: [
                    DepAccordion(
                      title: context.knobs.stringOrNull(
                          label: 'Accordion Title',
                          initialValue: 'Accordion Title'),
                      content: context.knobs.stringOrNull(
                          label: 'Accordion Content',
                          initialValue: 'Accordion Content'),
                    )
                  ],
                )),
          ));
}

WidgetbookUseCase iconAccordion(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Accordion/Icon',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Icon Accordion",
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
                  children: [
                    DepAccordion(
                        title: context.knobs.stringOrNull(
                            label: 'Accordion Title',
                            initialValue: 'Accordion Title'),
                        content: context.knobs.stringOrNull(
                            label: 'Accordion Content',
                            initialValue: 'Accordion Content'),
                        collapsedIcon: const Icon(Icons.add),
                        expandedIcon: const Icon(Icons.minimize))
                  ],
                )),
          ));
}

WidgetbookUseCase textAccordion(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Accordion/Text',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Text Accordion",
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
                  children: [
                    DepAccordion(
                        title: context.knobs.stringOrNull(
                            label: 'Accordion Title',
                            initialValue: 'Accordion Title'),
                        content: context.knobs.stringOrNull(
                            label: 'Accordion Content',
                            initialValue: 'Accordion Content'),
                        collapsedIcon: const Text('Show'),
                        expandedIcon: const Text('Hide'))
                  ],
                )),
          ));
}
