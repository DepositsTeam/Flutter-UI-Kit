import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit_example/widgetbook/custom_json/countries.dart'
    as Country;
import 'package:deposits_ui_kit_example/widgetbook/custom_json/countries.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase countryPicker(BuildContext context) {
  final formKey = GlobalKey<FormBuilderState>();
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
            return FormBuilder(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton<Country.Country>(
                        value: selectedCountry,
                        onChanged: (newValue) {
                          setState(() {
                            selectedCountry = newValue;
                          });
                        },
                        items: countries.map((country) {
                          return DropdownMenuItem<Country.Country>(
                            value: country,
                            child: Text(country.name),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ));
          })));
}

WidgetbookUseCase countryStatePicker(BuildContext context) {
  final formKey = GlobalKey<FormBuilderState>();
  Country.Country? selectedCountry;
  Country.State? selectedState;

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
            Widget buildStatePicker() {
              if (selectedCountry == null || selectedCountry!.states == null) {
                return SizedBox.shrink();
              }

              return DropdownButton<Country.State>(
                value: selectedState,
                onChanged: (newValue) {
                  setState(() {
                    selectedState = newValue;
                  });
                },
                items: selectedCountry!.states!.map((state) {
                  return DropdownMenuItem<Country.State>(
                    value: state,
                    child: Text(state.name ?? ""),
                  );
                }).toList(),
              );
            }

            return FormBuilder(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton<Country.Country>(
                        value: selectedCountry,
                        onChanged: (newValue) {
                          setState(() {
                            selectedCountry = newValue;
                          });
                        },
                        items: countries.map((country) {
                          return DropdownMenuItem<Country.Country>(
                            value: country,
                            child: Text(country.name),
                          );
                        }).toList(),
                      ),
                      verticalSpaceSmallX,
                      buildStatePicker()
                    ],
                  ),
                ));
          })));
}

WidgetbookUseCase countryStateCityPicker(BuildContext context) {
  final formKey = GlobalKey<FormBuilderState>();
  Country.Country? selectedCountry;
  Country.State? selectedState;
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
            Widget buildStatePicker() {
              if (selectedCountry == null || selectedCountry!.states == null) {
                return SizedBox.shrink();
              }

              return DropdownButton<Country.State>(
                value: selectedState,
                onChanged: (newValue) {
                  setState(() {
                    selectedState = newValue;
                  });
                },
                items: selectedCountry!.states!.map((state) {
                  return DropdownMenuItem<Country.State>(
                    value: state,
                    child: Text(state.name ?? ""),
                  );
                }).toList(),
              );
            }

            Widget buildCityPicker() {
              if (selectedState == null || selectedState!.cities == null) {
                return SizedBox.shrink();
              }

              return DropdownButton<String>(
                value: selectedCity,
                onChanged: (newValue) {
                  setState(() {
                    selectedCity = newValue;
                  });
                },
                items: selectedState!.cities!.map((city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
              );
            }

            return FormBuilder(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton<Country.Country>(
                        value: selectedCountry,
                        onChanged: (newValue) {
                          setState(() {
                            selectedCountry = newValue;
                          });
                        },
                        items: countries.map((country) {
                          return DropdownMenuItem<Country.Country>(
                            value: country,
                            child: Text(country.name),
                          );
                        }).toList(),
                      ),
                      verticalSpaceSmallX,
                      buildStatePicker(),
                      verticalSpaceSmallX,
                      buildCityPicker()
                    ],
                  ),
                ));
          })));
}
