import 'package:deposits_ui_kit_example/widgetbook/accordion/accordion.dart';
import 'package:deposits_ui_kit_example/widgetbook/alerts/alert.dart';
import 'package:deposits_ui_kit_example/widgetbook/avatar/avatar.dart';
import 'package:deposits_ui_kit_example/widgetbook/badge/badges.dart';
import 'package:deposits_ui_kit_example/widgetbook/bottom_sheet/bottom_sheet.dart';
import 'package:deposits_ui_kit_example/widgetbook/bottons/bottons.dart';
import 'package:deposits_ui_kit_example/widgetbook/card/card.dart';
import 'package:deposits_ui_kit_example/widgetbook/colors/colors.dart';
import 'package:deposits_ui_kit_example/widgetbook/country_state_city/country_state_city.dart';
import 'package:deposits_ui_kit_example/widgetbook/images/images.dart';
import 'package:deposits_ui_kit_example/widgetbook/loaders/loaders.dart';
import 'package:deposits_ui_kit_example/widgetbook/payment_card/payment_card.dart';
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
                  BasicAccordion(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Accordion/Icon',
                useCases: [
                  //-------------default button----------------------//
                  IconAccordion(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Accordion/Text',
                useCases: [
                  //-------------default button----------------------//
                  TextAccordion(context),
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
                  DefaultButton(context),
                ],
              ),
              WidgetbookComponent(
                name: 'primary Button',
                useCases: [
                  //-------------primary button----------------------//
                  PrimaryButton(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Danger Button',
                useCases: [
                  //-------------Danger button----------------------//
                  DangerButton(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Success Button',
                useCases: [
                  //-------------Success button----------------------//
                  SuccessButton(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Invincible Button',
                useCases: [
                  //-------------Invincible button----------------------//
                  InvincibleButton(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Outline Button',
                useCases: [
                  //-------------Outline button----------------------//
                  OutlineButton(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Social Button',
                useCases: [
                  //-------------Social button----------------------//
                  FilledSocialButton(context),
                  OutlinedSocialButton(context),
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
                  SubtleBadge(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Subtle Badge',
                useCases: [
                  //-------------Solid badge----------------------//
                  SolidBadge(context),
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
                  TitleToast(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Title Indicator Toast',
                useCases: [
                  //-------------Title Indicator Toast----------------------//
                  TitleIndicatorToast(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Title Mgs Toast',
                useCases: [
                  //-------------Title Mgs Toast----------------------//
                  TitleMgsToast(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Indicator Toast',
                useCases: [
                  //-------------Indicator Toast----------------------//
                  IndicatorToast(context),
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
                  ChromaticColors(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Cyan Color Shades',
                useCases: [
                  //-------------Cyan Color Shades----------------------//
                  CyanColorShades(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Green Color Shades',
                useCases: [
                  //-------------Green Color Shades----------------------//
                  GreenColorShades(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Orange Color Shades',
                useCases: [
                  //-------------Orange Color Shades----------------------//
                  OrangeColorShades(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Red Color Shades',
                useCases: [
                  //-------------Red Color Shades----------------------//
                  RedColorShades(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Blue Color Shades',
                useCases: [
                  //-------------Blue Color Shades----------------------//
                  BlueColorShades(context),
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
                  BasicAvatar(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Basic Subtile Avatar',
                useCases: [
                  //-------------Basic Subtile Avatar----------------------//
                  BasicSubtileAvatar(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Badge Avatar',
                useCases: [
                  //-------------Badge Avatar----------------------//
                  BadgeAvatar(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Badge Subtile Avatar',
                useCases: [
                  //-------------Badge Subtile Avatar----------------------//
                  BadgeSubtleAvatar(context),
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
                  RadioLabel(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Radio ListTile Label',
                useCases: [
                  //-------------Radio ListTile Label----------------------//
                  RadioListTileLabel(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Check Label',
                useCases: [
                  //-------------Check Label----------------------//
                  CheckLabel(context),
                ],
              ),
            ],
          ),
          //card
          WidgetbookCategory(
            name: 'Card',
            widgets: [
              WidgetbookComponent(
                name: 'Card/Basic',
                useCases: [
                  //-------------Basic card----------------------//
                  BasicCard(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Card/Gradient',
                useCases: [
                  //-------------Gradient card----------------------//
                  GradientCard(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Card/Clip',
                useCases: [
                  //-------------clip card----------------------//
                  ClipCard(context),
                ],
              ),
              WidgetbookComponent(
                name: 'Card/ImageBackground & Image Overlay',
                useCases: [
                  //-------------background image card----------------------//
                  BackImageCard(context),
                ],
              )
            ],
          ),
          //Bottom sheet
          WidgetbookCategory(name: 'Bottom Sheet', widgets: [
            WidgetbookComponent(
              name: 'BottomSheet/Basic',
              useCases: [
                //-------------Basic button----------------------//
                BasicBottomSheet(context),
              ],
            ),
            WidgetbookComponent(
              name: 'BottomSheet/Footer',
              useCases: [
                //-------------Footer bottom sheet----------------------//
                FooterBottomSheet(context),
              ],
            ),
            WidgetbookComponent(
              name: 'BottomSheet/Expandable Content',
              useCases: [
                //-------------Footer bottom sheet----------------------//
                ExpandableBottomSheet(context),
              ],
            ),
          ]),
          //Images
          WidgetbookCategory(name: 'Images', widgets: [
            WidgetbookComponent(
              name: 'Basic Image',
              useCases: [
                //-------------basic image----------------------//
                BasicImage(context),
              ],
            ),
            WidgetbookComponent(
              name: 'Image with Child widget & alignment',
              useCases: [
                //-------------basic image----------------------//
                ChildImage(context),
              ],
            ),
            WidgetbookComponent(
              name: 'Overlay Image',
              useCases: [
                //-------------basic image----------------------//
                OverlayImage(context),
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
                BasicLoader(context),
              ],
            ),
            WidgetbookComponent(
              name: 'Custom loader with image/gif',
              useCases: [
                //-------------icon rating----------------------//
                CustomLoader(context),
              ],
            ),
            WidgetbookComponent(
              name: 'Custom loader with Icons',
              useCases: [
                //-------------half rating----------------------//
                CustomIconsLoader(context),
              ],
            ),
            WidgetbookComponent(
              name: 'Custom loader with Text',
              useCases: [
                //-------------half rating----------------------//
                CustomTextLoader(context),
              ],
            ),
          ]),
          //toggle
          WidgetbookCategory(name: 'Toggle', widgets: [
            WidgetbookComponent(
              name: 'Basic Toggle',
              useCases: [
                //-------------IOS loader----------------------//
                BasicToggle(context),
              ],
            ),
          ]),
          //input text
          WidgetbookCategory(name: 'Input Text', widgets: [
            WidgetbookComponent(
              name: 'Basic Input Text',
              useCases: [
                //-------------Input text----------------------//
                BasicTextInput(context),
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
                PaymentMainCard(context),
              ],
            ),
          ]),
          //payment card
          WidgetbookCategory(name: 'Alerts', widgets: [
            WidgetbookComponent(
              name: 'Alerts IOS Native',
              useCases: [
                //-------------Alerts IOSt----------------------//
                AlertIOS(context),
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
