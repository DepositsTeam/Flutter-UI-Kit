import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

final Key ratingKey = UniqueKey();
final Key buttonKey = UniqueKey();

const filledIcon = Icon(Icons.favorite);
const defaultIcon = Icon(Icons.favorite_border);

WidgetbookUseCase basicRating(BuildContext context) {
  double rating = 4;
  return WidgetbookUseCase(
      name: 'Rating/Basic',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Rating/Basic",
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
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) =>
                                  DepRating(
                                    key: ratingKey,
                                    value: rating,
                                    onChanged: (value) {
                                      debugPrint('value $value');
                                      setState(() {
                                        rating = value;
                                      });
                                    },
                                  )),
                    )
                  ]))));
}

WidgetbookUseCase iconRating(BuildContext context) {
  double rating = 1;
  return WidgetbookUseCase(
      name: 'Rating/Icon',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Rationg/Icon",
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
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) =>
                                  DepRating(
                                    key: ratingKey,
                                    value: rating,
                                    defaultIcon: defaultIcon,
                                    filledIcon: filledIcon,
                                    onChanged: (value) {
                                      debugPrint('value $value');
                                      setState(() {
                                        rating = value;
                                      });
                                    },
                                  )),
                    )
                  ]))));
}

WidgetbookUseCase editTextRating(BuildContext context) {
  final ratingController = TextEditingController();
  double rating = 3.5;
  ratingController.text = '3.5';
  return WidgetbookUseCase(
      name: 'Rating/Edittext',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Rating/Edittext",
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
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) =>
                            Material(
                          child: DepRating(
                            key: ratingKey,
                            value: rating,
                            controller: ratingController,
                            showTextForm: true,
                            suffixIcon: DepNormalButton(
                              key: buttonKey,
                              type: DepButtonType.transparent,
                              onPressed: () {
                                setState(() {
                                  rating =
                                      double.parse(ratingController.text);
                                });
                              },
                              child: const Text('Rate'),
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ),
                  ]))));
}
