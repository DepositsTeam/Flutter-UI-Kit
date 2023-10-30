import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit_example/widgetbook/charts/data/sector.dart';

import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase invoiceChart(BuildContext context) {
  String selectedMonth = 'January';
  var months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  return WidgetbookUseCase(
      name: 'Invoice',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Invoice Chart",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: StatefulBuilder(builder: (context, setState) {
            return DepInvoiceChart(
              icon: Container(
                  height: 40,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 0.80),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text(
                        'This month',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: months
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: selectedMonth,
                      elevation: 0,
                      underline: Container(),
                      onChanged: (String? newValue) {
                        debugPrint('Selected: $newValue');
                        setState(() {
                          selectedMonth = newValue!;
                        });
                      },
                    ),
                  )),
              sectors: invoiceSectors,
              total: context.knobs.string(label: 'Total', initialValue: '245'),
              amount: context.knobs
                  .string(label: 'Amount', initialValue: '\$765,098.90'),
            );
          })));
}
