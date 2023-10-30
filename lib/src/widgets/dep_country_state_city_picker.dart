// import 'package:deposits_ui_kit/src/values/dep_colors.dart';
// import 'package:deposits_ui_kit/src/values/dep_spacing.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:deposits_ui_kit/src/model/countries.dart'
//     as country;
// import 'package:deposits_ui_kit/src/model/countries.dart';

// class DepCountryPicker extends StatefulWidget {
//   final ValueChanged<country.Country>? selectedCountry;
//   const DepCountryPicker({required this.selectedCountry, super.key});

//   @override
//   State<DepCountryPicker> createState() => _DepCountryPickerState();
// }

// class _DepCountryPickerState extends State<DepCountryPicker> {
//   country.Country initialSelectedCountry = countries[229];
//   ScrollController scrollController = ScrollController();

//   @override
//   void initState() {
//     super.initState();
//     widget.selectedCountry!(initialSelectedCountry);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DropdownSearch<country.Country>(
//       mode: Mode.MENU,
//       showSearchBox: true,
//       isFilteredOnline: true,
//       dropDownButton: const Icon(
//         Icons.arrow_drop_down,
//         color: Colors.black,
//       ),
//       searchFieldProps: TextFieldProps(
//         scrollPhysics: const ScrollPhysics(),
//         scrollController: scrollController,
//         decoration: const InputDecoration(
//             hintText: 'Search Country',
//             hintStyle: TextStyle(
//                 fontSize: 13, color: Color.fromARGB(235, 158, 158, 158)),
//             contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//             // sufrfixIcon: Icon(CupertinoIcons.doc_text_fill),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: cyan500),
//                 borderRadius: BorderRadius.all(Radius.circular(5))),
//             disabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: gray300),
//                 borderRadius: BorderRadius.all(Radius.circular(5))),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: gray300),
//                 borderRadius: BorderRadius.all(Radius.circular(5))),
//             border: OutlineInputBorder(
//                 borderSide: BorderSide(color: gray300),
//                 borderRadius: BorderRadius.all(Radius.circular(5))),
//             fillColor: Colors.white),
//       ),
//       scrollbarProps: ScrollbarProps(),
//       dropdownSearchDecoration: InputDecoration(
//           hintStyle: const TextStyle(color: black),
//           contentPadding:
//               const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//           prefixIcon: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Text(
//                 initialSelectedCountry.flag,
//                 style: const TextStyle(fontSize: 35),
//               )),
//           focusedBorder: const OutlineInputBorder(
//               borderSide: BorderSide(color: cyan500),
//               borderRadius: BorderRadius.all(Radius.circular(5))),
//           disabledBorder: const OutlineInputBorder(
//               borderSide: BorderSide(color: gray300),
//               borderRadius: BorderRadius.all(Radius.circular(5))),
//           enabledBorder: const OutlineInputBorder(
//               borderSide: BorderSide(color: gray300),
//               borderRadius: BorderRadius.all(Radius.circular(5))),
//           border: const OutlineInputBorder(
//               borderSide: BorderSide(color: gray300),
//               borderRadius: BorderRadius.all(Radius.circular(5))),
//           fillColor: Colors.white),
//       dropdownBuilder: customDropDownCountries,
//       popupItemBuilder: customPopupItemBuilder,
//       onChanged: (country.Country? country) {
//         setState(() {
//           if (country != null) {
//             initialSelectedCountry = country;
//             widget.selectedCountry!(country);
//           }
//         });
//       },
//       onFind: (String? filter) => getData(filter ?? ""),
//       showClearButton: true,
//       clearButtonBuilder: (_) => const Padding(
//         padding: EdgeInsets.all(8.0),
//         child: Icon(Icons.clear, size: 17, color: Colors.black),
//       ),
//     );
//   }

//   Widget customDropDownCountries(BuildContext context, country.Country? item) {
//     return Container(
//         child: (item == null)
//             ? ListTile(
//                 contentPadding: const EdgeInsets.all(0),
//                 title: Text(initialSelectedCountry.name,
//                     textAlign: TextAlign.start,
//                     style: const TextStyle(fontSize: 13, color: Colors.black)),
//               )
//             : ListTile(
//                 contentPadding: const EdgeInsets.all(0),
//                 title: Text(
//                   item.name,
//                   textAlign: TextAlign.left,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(fontSize: 13.5, color: Colors.black),
//                 )));
//   }

//   Widget customPopupItemBuilder(
//       BuildContext context, country.Country item, bool isSelected) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: !isSelected
//           ? null
//           : BoxDecoration(
//               border: Border.all(color: Theme.of(context).primaryColor),
//               borderRadius: BorderRadius.circular(5),
//               color: Colors.red,
//             ),
//       child: ListTile(
//         leading: Text(
//           item.flag,
//           style: const TextStyle(fontSize: 35),
//         ),
//         title: Text(item.name,
//             style: const TextStyle(
//               fontSize: 14,
//               color: Color.fromARGB(255, 102, 100, 100),
//             )),
//       ),
//     );
//   }

//   Future<List<country.Country>> getData(String filter) async {
//     if (filter.isEmpty) {
//       // If the query is empty, return all countries
//       return countries;
//     }

//     String lowercaseQuery = filter.toLowerCase();

//     // Filter countries based on their names containing the query
//     return countries.where((country) {
//       return country.name.toLowerCase().contains(lowercaseQuery);
//     }).toList();
//   }
// }

// class DepCountryStatePicker extends StatefulWidget {
//   final ValueChanged<country.Country>? selectedCountry;
//   final ValueChanged<country.States>? selectedState;
//   const DepCountryStatePicker(
//       {required this.selectedCountry, required this.selectedState, super.key});

//   @override
//   State<DepCountryStatePicker> createState() => _DepCountryStatePickerState();
// }

// class _DepCountryStatePickerState extends State<DepCountryStatePicker> {
//   country.States userSelectedState = countries[229].states!.first;
//   ScrollController scrollController = ScrollController();
//   country.Country? userSelectedCountry;

//   @override
//   void initState() {
//     userSelectedCountry = countries[229];
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         DepCountryPicker(
//           selectedCountry: (value) {
//             userSelectedCountry = value;
//             userSelectedState = value.states!.first;
//             widget.selectedCountry!(value);
//           },
//         ),
//         verticalSpaceSmallX,
//         DropdownSearch<country.States>(
//           mode: Mode.MENU,
//           showSearchBox: true,
//           isFilteredOnline: true,
//           dropDownButton: const Icon(
//             Icons.arrow_drop_down,
//             color: Colors.black,
//           ),
//           searchFieldProps: TextFieldProps(
//             scrollPhysics: const ScrollPhysics(),
//             scrollController: scrollController,
//             decoration: const InputDecoration(
//                 hintText: 'Search State',
//                 hintStyle: TextStyle(
//                     fontSize: 13, color: Color.fromARGB(235, 158, 158, 158)),
//                 contentPadding:
//                     EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                 // sufrfixIcon: Icon(CupertinoIcons.doc_text_fill),
//                 focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: cyan500),
//                     borderRadius: BorderRadius.all(Radius.circular(5))),
//                 disabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: gray300),
//                     borderRadius: BorderRadius.all(Radius.circular(5))),
//                 enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: gray300),
//                     borderRadius: BorderRadius.all(Radius.circular(5))),
//                 border: OutlineInputBorder(
//                     borderSide: BorderSide(color: gray300),
//                     borderRadius: BorderRadius.all(Radius.circular(5))),
//                 fillColor: Colors.white),
//           ),
//           scrollbarProps: ScrollbarProps(),
//           dropdownSearchDecoration: const InputDecoration(
//               hintStyle: TextStyle(color: black),
//               contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//               focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: cyan500),
//                   borderRadius: BorderRadius.all(Radius.circular(5))),
//               disabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: gray300),
//                   borderRadius: BorderRadius.all(Radius.circular(5))),
//               enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: gray300),
//                   borderRadius: BorderRadius.all(Radius.circular(5))),
//               border: OutlineInputBorder(
//                   borderSide: BorderSide(color: gray300),
//                   borderRadius: BorderRadius.all(Radius.circular(5))),
//               fillColor: Colors.white),
//           dropdownBuilder: customDropDownStates,
//           popupItemBuilder: customPopupItemBuilder,
//           onChanged: (country.States? states) {
//             setState(() {
//               if (states != null) {
//                 userSelectedState = states;
//                 widget.selectedState!(states);
//               }
//             });
//           },
//           onFind: (String? filter) => getData(filter ?? ""),
//           showClearButton: true,
//           clearButtonBuilder: (_) => const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Icon(Icons.clear, size: 17, color: Colors.black),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget customDropDownStates(BuildContext context, country.States? item) {
//     return Container(
//         child: (item == null)
//             ? ListTile(
//                 contentPadding: const EdgeInsets.all(0),
//                 title: Text(userSelectedState.name!,
//                     textAlign: TextAlign.start,
//                     style: const TextStyle(fontSize: 13, color: Colors.black)),
//               )
//             : ListTile(
//                 contentPadding: const EdgeInsets.all(0),
//                 title: Text(
//                   item.name!,
//                   textAlign: TextAlign.left,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(fontSize: 13.5, color: Colors.black),
//                 )));
//   }

//   Widget customPopupItemBuilder(
//       BuildContext context, country.States item, bool isSelected) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: !isSelected
//           ? null
//           : BoxDecoration(
//               border: Border.all(color: Theme.of(context).primaryColor),
//               borderRadius: BorderRadius.circular(5),
//               color: Colors.red,
//             ),
//       child: ListTile(
//         title: Text(item.name!,
//             style: const TextStyle(
//               fontSize: 14,
//               color: Color.fromARGB(255, 102, 100, 100),
//             )),
//       ),
//     );
//   }

//   Future<List<country.States>> getData(String filter) async {
//     if (filter.isEmpty) {
//       // If the query is empty, return all countries
//       return userSelectedCountry!.states!;
//     }

//     String lowercaseQuery = filter.toLowerCase();

//     // Filter countries based on their names containing the query
//     return userSelectedCountry!.states!.where((state) {
//       return state.name!.toLowerCase().contains(lowercaseQuery);
//     }).toList();
//   }
// }

// class DepCountryStateCityPicker extends StatefulWidget {
//   final ValueChanged<country.Country>? selectedCountry;
//   final ValueChanged<country.States>? selectedState;
//   final ValueChanged<String>? selectedCity;
//   const DepCountryStateCityPicker(
//       {required this.selectedCountry,
//       required this.selectedState,
//       required this.selectedCity,
//       super.key});

//   @override
//   State<DepCountryStateCityPicker> createState() =>
//       _DepCountryStateCityPickerState();
// }

// class _DepCountryStateCityPickerState extends State<DepCountryStateCityPicker> {
//   // Country.States userSelectedState = countries[229].states!.first;
//   ScrollController scrollController = ScrollController();
//   country.Country? userSelectedCountry;
//   country.States? userSelectedState;
//   String? userSelectedCity;

//   @override
//   void initState() {
//     userSelectedCountry = countries[229];
//     userSelectedState = userSelectedCountry!.states!.first;
//     userSelectedCity = userSelectedState!.cities!.first;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         // DepCountryPicker(
//         //   selectedCountry: (value) {
//         //     userSelectedCountry = value;
//         //     userSelectedState = value.states!.first;
//         //     widget.selectedCountry!(value);
//         //   },
//         // ),
//         // verticalSpaceSmallX,
//         DepCountryStatePicker(selectedCountry: (value) {
//           userSelectedCountry = value;
//           userSelectedState = value.states!.first;
//           widget.selectedCountry!(value);
//         }, selectedState: (value) {
//           userSelectedState = value;
//           userSelectedCity = value.cities!.first;
//           widget.selectedState!(value);
//         }),
//         verticalSpaceSmallX,
//         DropdownSearch<String>(
//           mode: Mode.MENU,
//           showSearchBox: true,
//           isFilteredOnline: true,
//           dropDownButton: const Icon(
//             Icons.arrow_drop_down,
//             color: Colors.black,
//           ),
//           searchFieldProps: TextFieldProps(
//             scrollPhysics: const ScrollPhysics(),
//             scrollController: scrollController,
//             decoration: const InputDecoration(
//                 hintText: 'Search City',
//                 hintStyle: TextStyle(
//                     fontSize: 13, color: Color.fromARGB(235, 158, 158, 158)),
//                 contentPadding:
//                     EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                 // sufrfixIcon: Icon(CupertinoIcons.doc_text_fill),
//                 focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: cyan500),
//                     borderRadius: BorderRadius.all(Radius.circular(5))),
//                 disabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: gray300),
//                     borderRadius: BorderRadius.all(Radius.circular(5))),
//                 enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: gray300),
//                     borderRadius: BorderRadius.all(Radius.circular(5))),
//                 border: OutlineInputBorder(
//                     borderSide: BorderSide(color: gray300),
//                     borderRadius: BorderRadius.all(Radius.circular(5))),
//                 fillColor: Colors.white),
//           ),
//           scrollbarProps: ScrollbarProps(),
//           dropdownSearchDecoration: const InputDecoration(
//               hintStyle: TextStyle(color: black),
//               contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//               focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: cyan500),
//                   borderRadius: BorderRadius.all(Radius.circular(5))),
//               disabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: gray300),
//                   borderRadius: BorderRadius.all(Radius.circular(5))),
//               enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: gray300),
//                   borderRadius: BorderRadius.all(Radius.circular(5))),
//               border: OutlineInputBorder(
//                   borderSide: BorderSide(color: gray300),
//                   borderRadius: BorderRadius.all(Radius.circular(5))),
//               fillColor: Colors.white),
//           dropdownBuilder: customDropDownCities,
//           popupItemBuilder: customPopupItemBuilder,
//           onChanged: (String? city) {
//             setState(() {
//               if (city!.isNotEmpty) {
//                 userSelectedCity = city;
//                 widget.selectedCity!(city);
//               }
//             });
//           },
//           onFind: (String? filter) => getData(filter ?? ""),
//           showClearButton: true,
//           clearButtonBuilder: (_) => const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Icon(Icons.clear, size: 17, color: Colors.black),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget customDropDownCities(BuildContext context, String? item) {
//     return Container(
//         child: (item == null)
//             ? ListTile(
//                 contentPadding: const EdgeInsets.all(0),
//                 title: Text(userSelectedCity!,
//                     textAlign: TextAlign.start,
//                     style: const TextStyle(fontSize: 13, color: Colors.black)),
//               )
//             : ListTile(
//                 contentPadding: const EdgeInsets.all(0),
//                 title: Text(
//                   item,
//                   textAlign: TextAlign.left,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(fontSize: 13.5, color: Colors.black),
//                 )));
//   }

//   Widget customPopupItemBuilder(
//       BuildContext context, String item, bool isSelected) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: !isSelected
//           ? null
//           : BoxDecoration(
//               border: Border.all(color: Theme.of(context).primaryColor),
//               borderRadius: BorderRadius.circular(5),
//               color: Colors.red,
//             ),
//       child: ListTile(
//         title: Text(item,
//             style: const TextStyle(
//               fontSize: 14,
//               color: Color.fromARGB(255, 102, 100, 100),
//             )),
//       ),
//     );
//   }

//   Future<List<String>> getData(String filter) async {
//     if (filter.isEmpty) {
//       // If the query is empty, return all countries
//       return userSelectedState!.cities!;
//     }

//     String lowercaseQuery = filter.toLowerCase();

//     // Filter countries based on their names containing the query
//     return userSelectedState!.cities!.where((city) {
//       return city.toLowerCase().contains(lowercaseQuery);
//     }).toList();
//   }
// }
