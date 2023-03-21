import 'package:deposits_ui_kit_example/avatar/avatar_example.dart';
import 'package:deposits_ui_kit_example/badge/badge_examples.dart';
import 'package:deposits_ui_kit_example/button/botton_examples.dart';
import 'package:deposits_ui_kit_example/colors/colors_example.dart';
import 'package:deposits_ui_kit_example/toast/toast_example.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() => runApp(const MyApp());

final _plugins = initializePlugins(
  contentsSidePanel: true,
  knobsSidePanel: true,
  initialDeviceFrameData: DeviceFrameData(
    device: Devices.ios.iPhone13ProMax,
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => Storybook(
        initialStory: 'Button/Default Button',
        plugins: _plugins,
        stories: [
          //-------------default button----------------------//
          DefaultButton(context),
          //-------------primary button----------------------//
          PrimaryButton(context),
          //-------------danger button----------------------//
          DangerButton(context),
          //-------------success button----------------------//
          SuccessButton(context),
          //-------------outline button----------------------//
          OutlineButton(context),
          //-------------invincible button----------------------//
          InvincibleButton(context),
          //-------------subtle Badge----------------------//
          SubtleBadge(context),
          //-------------Solid Badge----------------------//
          SolidBadge(context),
          //-------------title toast----------------------//
          TitleToast(context),
           //-------------title  indicator toast----------------------//
          TitleIndicatorToast(context),
          //-------------title and message toast----------------------//
          TitleMgsToast(context),
           //-------------indicator toast----------------------//
          IndicatorToast(context),
           //-------------colors----------------------//
          ChromaticColors(context),
          CyanColorShades(context),
          GreenColorShades(context),
          OrangeColorShades(context),
          RedColorShades(context),
          BlueColorShades(context),
           //-------------Avatrs----------------------//
          BasicAvatar(context),
          BasicSubtileAvatar(context),
          BadgeAvatar(context),
          BadgeSubtleAvatar(context)
        ],
      );
}
