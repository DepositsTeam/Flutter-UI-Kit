import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase countryPicker(BuildContext context) {

  return WidgetbookUseCase(
      name: 'Country Picker',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Country Picker",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: StatefulBuilder(builder: (context, setState) {
            return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                alignment: Alignment.center,
                child: DepCountryPicker(
                  selectedCountry: (value) {
                  },
                ));
          })));
}

WidgetbookUseCase countryStatePicker(BuildContext context) {

  return WidgetbookUseCase(
      name: 'Country State Picker',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Country State Picker",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: StatefulBuilder(builder: (context, setState) {
            return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: DepCountryStatePicker(
                  selectedCountry: (value) {
                  },
                  selectedState: (value) {
                  },
                ));
          })));
}

WidgetbookUseCase countryStateCityPicker(BuildContext context) {

  return WidgetbookUseCase(
      name: 'Country State City Picker',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Country State City Picker",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: StatefulBuilder(builder: (context, setState) {
            return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: DepCountryStateCityPicker(selectedCountry: (value) {
                }, selectedState: (value) {
                }, selectedCity: (value) {
                }));
          })));
}
