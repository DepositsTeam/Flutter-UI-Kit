import 'package:deposits_ui_kit_example/widgetbook/accordion/accordion.dart';
import 'package:deposits_ui_kit_example/widgetbook/alerts/alert.dart';
import 'package:deposits_ui_kit_example/widgetbook/avatar/avatar.dart';
import 'package:deposits_ui_kit_example/widgetbook/badge/badges.dart';
import 'package:deposits_ui_kit_example/widgetbook/bottom_sheet/bottom_sheet.dart';
import 'package:deposits_ui_kit_example/widgetbook/bottons/bottons.dart';
import 'package:deposits_ui_kit_example/widgetbook/charts/multiple_line_chart.dart';
import 'package:deposits_ui_kit_example/widgetbook/charts/single_line_chart.dart';
import 'package:deposits_ui_kit_example/widgetbook/charts/half_pie_chart.dart';
import 'package:deposits_ui_kit_example/widgetbook/charts/invoice_chart.dart';
import 'package:deposits_ui_kit_example/widgetbook/charts/pie_chart.dart';
import 'package:deposits_ui_kit_example/widgetbook/colors/colors.dart';
import 'package:deposits_ui_kit_example/widgetbook/country_state_city/country_state_city.dart';
import 'package:deposits_ui_kit_example/widgetbook/images/images.dart';
import 'package:deposits_ui_kit_example/widgetbook/loaders/loaders.dart';
import 'package:deposits_ui_kit_example/widgetbook/payment_card/payment_card.dart';
import 'package:deposits_ui_kit_example/widgetbook/charts/doughnut_chart.dart';
import 'package:deposits_ui_kit_example/widgetbook/progress_bar/progress_bar.dart';
import 'package:deposits_ui_kit_example/widgetbook/radio/radio.dart';
import 'package:deposits_ui_kit_example/widgetbook/text_input/text_input.dart';
import 'package:deposits_ui_kit_example/widgetbook/toast/toast.dart';
import 'package:deposits_ui_kit_example/widgetbook/toggle/toggle.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class HotreloadWidgetbook extends StatelessWidget {
  const HotreloadWidgetbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
        categories: [
          //accordion
          WidgetbookCategory(
            name: 'Accordion',
            widgets: [
              WidgetbookComponent(
                name: 'Accordion/Basic',
                useCases: [
                  //-------------default button----------------------//
                  basicAccordion(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Accordion/Icon',
                useCases: [
                  //-------------default button----------------------//
                  iconAccordion(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Accordion/Text',
                useCases: [
                  //-------------default button----------------------//
                  textAccordion(context),
                ],
              )
            ],
          ),
          //button
          WidgetbookCategory(
            name: 'Buttons',
            widgets: [
              WidgetbookComponent(
                name: 'Default Button',
                useCases: [
                  //-------------default button----------------------//
                  defaultButton(context),
                ],
              ),
              WidgetbookComponent(
                name: 'primary Button',
                useCases: [
                  //-------------primary button----------------------//
                  primaryButton(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Danger Button',
                useCases: [
                  //-------------Danger button----------------------//
                  dangerButton(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Success Button',
                useCases: [
                  //-------------Success button----------------------//
                  successButton(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Invincible Button',
                useCases: [
                  //-------------Invincible button----------------------//
                  invincibleButton(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Outline Button',
                useCases: [
                  //-------------Outline button----------------------//
                  outlineButton(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Social Button',
                useCases: [
                  //-------------Social button----------------------//
                  filledSocialButton(context),
                  outlinedSocialButton(context),
                ],
              ),
            ],
          ),
          //badges
          WidgetbookCategory(
            name: 'Badges',
            widgets: [
              WidgetbookComponent(
                name: 'Subtle Badge',
                useCases: [
                  //-------------Subtle badge----------------------//
                  subtleBadge(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Solid Badge',
                useCases: [
                  //-------------Solid badge----------------------//
                  solidBadge(context),
                ],
              ),
            ],
          ),
          //toast
          WidgetbookCategory(
            name: 'Toasts',
            widgets: [
              WidgetbookComponent(
                name: 'Title Toast',
                useCases: [
                  //-------------Title Toast----------------------//
                  titleToast(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Title Indicator Toast',
                useCases: [
                  //-------------Title Indicator Toast----------------------//
                  titleIndicatorToast(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Title Mgs Toast',
                useCases: [
                  //-------------Title Mgs Toast----------------------//
                  titleMgsToast(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Indicator Toast',
                useCases: [
                  //-------------Indicator Toast----------------------//
                  indicatorToast(context),
                ],
              ),
            ],
          ),
          //colors
          WidgetbookCategory(
            name: 'colors',
            widgets: [
              WidgetbookComponent(
                name: 'Chromatic Colors',
                useCases: [
                  //-------------Chromatic Colors----------------------//
                  chromaticColors(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Cyan Color Shades',
                useCases: [
                  //-------------Cyan Color Shades----------------------//
                  cyanColorShades(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Green Color Shades',
                useCases: [
                  //-------------Green Color Shades----------------------//
                  greenColorShades(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Orange Color Shades',
                useCases: [
                  //-------------Orange Color Shades----------------------//
                  orangeColorShades(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Red Color Shades',
                useCases: [
                  //-------------Red Color Shades----------------------//
                  redColorShades(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Blue Color Shades',
                useCases: [
                  //-------------Blue Color Shades----------------------//
                  blueColorShades(context),
                ],
              ),
            ],
          ),
          //Avatars
          WidgetbookCategory(
            name: 'Avatars',
            widgets: [
              WidgetbookComponent(
                name: 'Basic Avatar',
                useCases: [
                  //-------------Basic Avatar----------------------//
                  basicAvatar(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Basic Subtile Avatar',
                useCases: [
                  //-------------Basic Subtile Avatar----------------------//
                  basicSubtileAvatar(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Badge Avatar',
                useCases: [
                  //-------------Badge Avatar----------------------//
                  badgeAvatar(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Badge Subtile Avatar',
                useCases: [
                  //-------------Badge Subtile Avatar----------------------//
                  badgeSubtleAvatar(context),
                ],
              ),
            ],
          ),
          //badges
          WidgetbookCategory(
            name: 'Radio/Check',
            widgets: [
              WidgetbookComponent(
                name: 'Radio Label',
                useCases: [
                  //-------------Radio Label----------------------//
                  radioLabel(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Radio ListTile Label',
                useCases: [
                  //-------------Radio ListTile Label----------------------//
                  radioListTileLabel(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Check Label',
                useCases: [
                  //-------------Check Label----------------------//
                  checkLabel(context),
                ],
              ),
            ],
          ),
          //card
          // WidgetbookCategory(
          //   name: 'Card',
          //   widgets: [
          //     WidgetbookComponent(
          //       name: 'Card/Basic',
          //       useCases: [
          //         //-------------Basic card----------------------//
          //         BasicCard(context),
          //       ],
          //     ),
          //     WidgetbookComponent(
          //       name: 'Card/Gradient',
          //       useCases: [
          //         //-------------Gradient card----------------------//
          //         GradientCard(context),
          //       ],
          //     ),
          //     WidgetbookComponent(
          //       name: 'Card/Clip',
          //       useCases: [
          //         //-------------clip card----------------------//
          //         ClipCard(context),
          //       ],
          //     ),
          //     WidgetbookComponent(
          //       name: 'Card/ImageBackground & Image Overlay',
          //       useCases: [
          //         //-------------background image card----------------------//
          //         BackImageCard(context),
          //       ],
          //     )
          //   ],
          // ),
          //Bottom sheet
          WidgetbookCategory(name: 'Bottom Sheet', widgets: [
            WidgetbookComponent(
              name: 'BottomSheet/Basic',
              useCases: [
                //-------------Basic button----------------------//
                basicBottomSheet(context),
              ],
            ),
            WidgetbookComponent(
              name: 'BottomSheet/Footer',
              useCases: [
                //-------------Footer bottom sheet----------------------//
                footerBottomSheet(context),
              ],
            ),
            WidgetbookComponent(
              name: 'BottomSheet/Expandable Content',
              useCases: [
                //-------------Footer bottom sheet----------------------//
                expandableBottomSheet(context),
              ],
            ),
          ]),
          //Images
          WidgetbookCategory(name: 'Images', widgets: [
            WidgetbookComponent(
              name: 'Basic Image',
              useCases: [
                //-------------basic image----------------------//
                basicImage(context),
              ],
            ),
            WidgetbookComponent(
              name: 'Image with Child widget & alignment',
              useCases: [
                //-------------basic image----------------------//
                childImage(context),
              ],
            ),
            WidgetbookComponent(
              name: 'Overlay Image',
              useCases: [
                //-------------basic image----------------------//
                overlayImage(context),
              ],
            ),
          ]),
          //Rating
          // WidgetbookCategory(name: 'Rating', widgets: [
          //   WidgetbookComponent(
          //     name: 'Basic Rating',
          //     useCases: [
          //       //-------------basic rating----------------------//
          //       BasicRating(context),
          //     ],
          //   ),
          //   WidgetbookComponent(
          //     name: 'Rating with Icon',
          //     useCases: [
          //       //-------------icon rating----------------------//
          //       IconRating(context),
          //     ],
          //   ),
          //   WidgetbookComponent(
          //     name: 'Edittext Rating',
          //     useCases: [
          //       //-------------half rating----------------------//
          //       EditTextRating(context),
          //     ],
          //   ),
          // ]),
          //loaders
          WidgetbookCategory(name: 'Loader', widgets: [
            WidgetbookComponent(
              name: 'Basic Loader',
              useCases: [
                //-------------IOS loader----------------------//
                basicLoader(context),
              ],
            ),
            WidgetbookComponent(
              name: 'Custom loader with image/gif',
              useCases: [
                //-------------icon rating----------------------//
                customLoader(context),
              ],
            ),
            WidgetbookComponent(
              name: 'Custom loader with Icons',
              useCases: [
                //-------------half rating----------------------//
                customIconsLoader(context),
              ],
            ),
            WidgetbookComponent(
              name: 'Custom loader with Text',
              useCases: [
                //-------------half rating----------------------//
                customTextLoader(context),
              ],
            ),
          ]),
          //toggle
          WidgetbookCategory(name: 'Toggle', widgets: [
            WidgetbookComponent(
              name: 'Basic Toggle',
              useCases: [
                //-------------IOS loader----------------------//
                basicToggle(context),
              ],
            ),
          ]),
          //input text
          WidgetbookCategory(name: 'Input Text', widgets: [
            WidgetbookComponent(
              name: 'Basic Input Text',
              useCases: [
                //-------------Input text----------------------//
                basicTextInput(context),
              ],
            ),
          ]),
          //payment card
          WidgetbookCategory(name: 'Payment Card', widgets: [
            WidgetbookComponent(
              name: 'PaymentCard',
              useCases: [
                //-------------Payment Card----------------------//
                // PaymentCard(context),
                paymentMainCard(context),
              ],
            ),
          ]),
          //payment card
          WidgetbookCategory(name: 'Alerts', widgets: [
            WidgetbookComponent(
              name: 'Alerts IOS Native',
              useCases: [
                //-------------Alerts IOSt----------------------//
                alertIOS(context),
              ],
            ),
          ]),
          //progress bar
          WidgetbookCategory(name: 'Progress Bar', widgets: [
            WidgetbookComponent(
              name: 'Progress Bar',
              useCases: [
                //-------------Alerts IOSt----------------------//
                progressBar(context),
              ],
            ),
          ]),
          //country state city
          WidgetbookCategory(name: 'Country State City Picker', widgets: [
            WidgetbookComponent(
              name: 'CountryStateCity',
              useCases: [
                //-------------Country picker----------------------//
                countryPicker(context),
                //-------------Country State picker----------------------//
                countryStatePicker(context),
                //-------------Country State City picker----------------------//
                countryStateCityPicker(context),
              ],
            ),
          ]),
          //charts
          WidgetbookCategory(name: 'Charts', widgets: [
            WidgetbookComponent(
              name: 'Pie Chart',
              useCases: [
                //-------------Doughnut Char----------------------//
                doughnutChart(context),
                pieChart(context),
                halfPieChart(context),
                invoiceChart(context),
              ],
            ),
            WidgetbookComponent(
              name: 'Bar Chart',
              useCases: [
                //-------------Doughnut Char----------------------//
              ],
            ),
            WidgetbookComponent(
              name: 'Line Chart',
              useCases: [
                //-------------Doughnut Char----------------------//
                lineChart(context),
                multipleLineChart(context)
              ],
            ),
          ])
        ],
        themes: [
          WidgetbookTheme(
            name: 'Light',
            data: ThemeData.light(),
          ),
          WidgetbookTheme(
            name: 'Dark',
            data: ThemeData.dark(),
          ),
        ],
        appInfo: AppInfo(name: 'Deposits UI Kit'),
        devices: [
          Apple.iPhone11,
          Apple.iPhone12,
          Apple.iPhone13,
          Samsung.s21ultra,
          Samsung.s10,
        ]);
  }
}
