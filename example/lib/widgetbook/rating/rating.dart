import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

final Key ratingKey = UniqueKey();
final Key buttonKey = UniqueKey();

const filledIcon = Icon(Icons.favorite);
const defaultIcon = Icon(Icons.favorite_border);

WidgetbookUseCase BasicRating(BuildContext context) {
  double _rating = 4;
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
                                    value: _rating,
                                    onChanged: (value) {
                                      print('value $value');
                                      setState(() {
                                        _rating = value;
                                      });
                                    },
                                  )),
                    )
                  ]))));
}

WidgetbookUseCase IconRating(BuildContext context) {
  double _rating = 1;
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
                                    value: _rating,
                                    defaultIcon: defaultIcon,
                                    filledIcon: filledIcon,
                                    onChanged: (value) {
                                      print('value $value');
                                      setState(() {
                                        _rating = value;
                                      });
                                    },
                                  )),
                    )
                  ]))));
}

WidgetbookUseCase EditTextRating(BuildContext context) {
  final _ratingController = TextEditingController();
  double _rating = 3.5;
  _ratingController.text = '3.5';
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
                            value: _rating,
                            controller: _ratingController,
                            showTextForm: true,
                            suffixIcon: DepNormalButton(
                              key: buttonKey,
                              type: DepButtonType.transparent,
                              onPressed: () {
                                setState(() {
                                  _rating =
                                      double.parse(_ratingController.text);
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
