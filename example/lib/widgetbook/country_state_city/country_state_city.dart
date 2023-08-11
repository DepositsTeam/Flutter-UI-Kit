import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit/src/assets/custom_json/countries.dart'
    as Country;
import 'package:deposits_ui_kit/src/assets/custom_json/countries.dart';
import 'package:dropdown_search2/dropdown_search2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase countryPicker(BuildContext context) {
  Country.Country? selectedCountry;

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
                    selectedCountry = value;
                  },
                ));
          })));
}

WidgetbookUseCase countryStatePicker(BuildContext context) {
  Country.States? selectedState;
  Country.Country? selectedCountry;

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
                    selectedCountry = value;
                  },
                  selectedState: (value) {
                    selectedState = value;
                  },
                ));
          })));
}

WidgetbookUseCase countryStateCityPicker(BuildContext context) {
  Country.Country? selectedCountry;
  Country.States? selectedState;
  String? selectedCity;

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
                  selectedCountry = value;
                }, selectedState: (value) {
                  selectedState = value;
                }, selectedCity: (value) {
                  selectedCity = value;
                }));
          })));
}
