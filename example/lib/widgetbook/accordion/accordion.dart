import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';


WidgetbookUseCase BasicAccordion(BuildContext context) {
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
                      title: context.knobs.text(
                            label: 'Accordion Title', initialValue: 'Accordion Title'),
                        content: context.knobs.text(
                          label: 'Accordion Content', initialValue: 'Accordion Content'),
                      )
                  ],
                )),
          ));
}

WidgetbookUseCase IconAccordion(BuildContext context) {
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
                      title: context.knobs.text(
                          label: 'Accordion Title',
                          initialValue: 'Accordion Title'),
                      content: context.knobs.text(
                          label: 'Accordion Content',
                          initialValue: 'Accordion Content'),
                          collapsedIcon: Icon(Icons.add),
                        expandedIcon: Icon(Icons.minimize)
                    )
                  ],
                )),
          ));
}

WidgetbookUseCase TextAccordion(BuildContext context) {
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
                      title: context.knobs.text(
                          label: 'Accordion Title',
                          initialValue: 'Accordion Title'),
                      content: context.knobs.text(
                          label: 'Accordion Content',
                          initialValue: 'Accordion Content'),
                          collapsedIcon: Text('Show'),
                        expandedIcon: Text('Hide')
                    )
                  ],
                )),
          ));
}
