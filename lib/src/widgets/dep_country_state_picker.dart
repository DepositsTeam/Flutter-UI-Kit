

// // ignore: must_be_immutable
// import 'dart:convert';


// import 'package:flutter/services.dart';
// import 'package:flutter/material.dart';
// import 'package:deposits_ui_kit/deposits_ui_kit.dart';

// class DepCountryStateCityPicker extends StatefulWidget {
//   TextEditingController country;
//   TextEditingController state;
//   TextEditingController city;
//   FormFieldValidator<String?>? countryValidator, stateValidator, cityValidator;
//   ValueChanged<bool> isReady;

//   DepCountryStateCityPicker(
//       {super.key, required this.country,
//       required this.state,
//       required this.city,
//       required this.isReady,
//       this.countryValidator,
//       this.stateValidator,
//       this.cityValidator});

//   @override
//   DepCountryStateCityPickerState createState() => DepCountryStateCityPickerState();
// }

// class DepCountryStateCityPickerState extends State<DepCountryStateCityPicker> {
//   List<CountryModel> _countryList = [];
//   final List<StateModel> _stateList = [];
//   final List<CityModel> _cityList = [];


//   @override
//   void initState() {
//     super.initState();
//     _getCountry();
//   }

//   Future<void> _getCountry() async {
//     _countryList.clear();
//     var jsonString =
//         await rootBundle.loadString('packages/deposits_ui_kit/lib/src/assets/country.json');
//     List<dynamic> body = json.decode(jsonString);
//     setState(() {
//       _countryList =
//           body.map((dynamic item) => CountryModel.fromJson(item)).toList();
//     });
//   }

//   Future<void> getState(String countryId) async {
//     _stateList.clear();
//     _cityList.clear();
//     List<StateModel> subStateList = [];
//     var jsonString =
//         await rootBundle.loadString('packages/deposits_ui_kit/lib/src/assets/state.json');
//     List<dynamic> body = json.decode(jsonString);

//     subStateList =
//         body.map((dynamic item) => StateModel.fromJson(item)).toList();
//     for (var element in subStateList) {
//       if (element.countryId == countryId) {
//         setState(() {
//           _stateList.add(element);
//         });
//       }
//     }
//   }

//   Future<void> getCity(String stateId) async {
//     _cityList.clear();
//     List<CityModel> subCityList = [];
//     var jsonString =
//         await rootBundle.loadString('packages/deposits_ui_kit/lib/src/assets/city.json');
//     List<dynamic> body = json.decode(jsonString);

//     subCityList =
//         body.map((dynamic item) => CityModel.fromJson(item)).toList();
//     for (var element in subCityList) {
//       if (element.stateId == stateId) {
//         setState(() {
//           _cityList.add(element);
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ///City TextField
//         DepTextFieldWidget(
//           controller: widget.city,
//           validator: widget.cityValidator,
//           textInputAction: TextInputAction.next,
//           hintText: 'Select city',
//           readOnly: false,
//           // / onTap: () {
//           //   setState(() => _title = 'City');
//           //   if (widget.state.text.isNotEmpty)
//           //     _showDialog(context);
//           //   else
//           //     _showSnackBar('Select City');
//           // },
//           onChanged: (value) {
//             setState(() {
//               // if (widget.city.text.trim().length > 1 &&
//               //     widget.state.text.trim().length > 1 &&
//               //     widget.country.text.trim().length > 1)
//               if (value!.isNotEmpty) {
//                 widget.isReady(true);
//               } else {
//                 widget.isReady(false);
//               }
//             });
//           },
//         ),
//         verticalSpaceSmallY,

//         ///State TextField
//         DepTextFieldWidget(
//           hintText: 'Select state',
//           controller: widget.state,
//           validator: widget.stateValidator,
//           textInputAction: TextInputAction.next,
//           // onTap: () {
//           //   setState(() => _title = 'State');
//           //   if (widget.country.text.isNotEmpty)
//           //     _showDialog(context);
//           //   else
//           //     _showSnackBar('Select Country');
//           // }, //Color(0xFFC0C4C9)
//           readOnly: false,
//           onChanged: (value) {
//             setState(() {
//               // if (widget.city.text.trim().length > 1 &&
//               //     widget.state.text.trim().length > 1 &&
//               //     widget.country.text.trim().length > 1)
//               if (value!.isNotEmpty) {
//                 widget.isReady(true);
//               } else {
//                 widget.isReady(false);
//               }
//             });
//           },
//         ),
//         verticalSpaceSmallY,

//         ///Country TextField
//         DepTextFieldWidget(
//           hintText: 'Select country',
//           controller: widget.country,
//           validator: (value) => value == null ? fieldCantBeEmpty : null,
//           // onTap: () {
//           //   setState(() => _title = 'Country');
//           //   _showDialog(context);
//           // },
//           textInputAction: TextInputAction.done,
//           readOnly: true,
//           // onChanged: (value) {
//           //   setState(() {
//           //     // if (widget.city.text.trim().length > 1 &&
//           //     //     widget.state.text.trim().length > 1 &&
//           //     //     widget.country.text.trim().length > 1)
//           //     if (value!.isNotEmpty) {
//           //       widget.isReady(true);
//           //     } else {
//           //       widget.isReady(false);
//           //     }
//           //   });
//           // },
//         ),
//       ],
//     );
//   }


// }
