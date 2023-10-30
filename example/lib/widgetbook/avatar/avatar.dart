import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit_example/widgetbook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

String imageUrl =
    "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250";

WidgetbookUseCase basicAvatar(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Avatar/Basic',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Basic Avatar",
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
                    DepAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                      shape: context.knobs.list(
                        label: 'Circle Shaoe',
                        description: 'Select Shape.',
                        initialOption: AvatarShape.circle,
                        options: depAvatarShapeOptions,
                        labelBuilder: (value) {
                          return getAvatarShapeLabel(value);
                        },
                      ),
                      size: DepSize.large,
                      maxRadius: context.knobs.doubleOrNull.slider(
                          label: 'Radius', initialValue: 30, max: 50, min: 30),
                    )
                  ],
                )),
          ));
}

WidgetbookUseCase basicSubtileAvatar(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Avatar/Subtle',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Basic Subtle Avatar",
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
                    DepAvatar(
                      backgroundColor: context.knobs.list(
                        label: 'Color Shade',
                        description: 'Select Color Shade.',
                        initialOption: cyan200,
                        labelBuilder: (value) {
                          return getSubtleColorLabel(value);
                        },
                        options: subtleColorOptions,
                      ),
                      shape: context.knobs.list(
                        label: 'Circle Shaoe',
                        description: 'Select Shape.',
                        initialOption: AvatarShape.circle,
                        options: depAvatarShapeOptions,
                        labelBuilder: (value) {
                          return getAvatarShapeLabel(value);
                        },
                      ),
                      size: DepSize.large,
                      maxRadius: context.knobs.doubleOrNull.slider(
                          label: 'Radius', initialValue: 30, max: 40, min: 30),
                      child: DepText(
                        text: context.knobs.string(
                            label: '2 Letter Initials', initialValue: 'TB'),
                        font: context.knobs.doubleOrNull.slider(
                            label: 'Font-size',
                            initialValue: 14,
                            max: 20,
                            min: 14),
                      ),
                    )
                  ],
                )),
          ));
}

WidgetbookUseCase badgeAvatar(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Avatar/Badge',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Badge Avatar",
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
                    Stack(
                      children: [
                        DepAvatar(
                          backgroundImage: NetworkImage(imageUrl),
                          size: DepSize.large,
                          maxRadius: context.knobs.doubleOrNull.slider(
                              label: 'Radius',
                              initialValue: 45,
                              max: 50,
                              min: 45),
                          shape: AvatarShape.circle,
                        ),
                        Positioned(
                          bottom: 3,
                          right: -4,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: white, width: 4)),
                            child: const DepBadge(
                              color: green500,
                              size: DepSize.small,
                              shape: BadgeShape.circle,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ));
}

WidgetbookUseCase badgeSubtleAvatar(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Avatar/Subtile Badge',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Badge Subtle Avatar",
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
                    Stack(
                      children: [
                        DepAvatar(
                          backgroundColor: context.knobs.list(
                            label: 'Color Shade',
                            description: 'Select Color Shade.',
                            initialOption: cyan200,
                            labelBuilder: (value) {
                              return getSubtleColorLabel(value);
                            },
                            options: subtleColorOptions,
                          ),
                          size: DepSize.large,
                          maxRadius: context.knobs.doubleOrNull.slider(
                              label: 'Radius',
                              initialValue: 45,
                              max: 50,
                              min: 45),
                          shape: AvatarShape.circle,
                          child: DepText(
                            font: context.knobs.doubleOrNull.slider(
                                label: 'Font-size',
                                initialValue: 25,
                                max: 30,
                                min: 25),
                            fntweight: FontWeight.w400,
                            text: context.knobs.string(
                                label: '2 Letter Initials', initialValue: 'TB'),
                          ),
                        ),
                        Positioned(
                          bottom: 3,
                          right: -4,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: white, width: 4)),
                            child: const DepBadge(
                              color: green500,
                              size: DepSize.small,
                              shape: BadgeShape.circle,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ));
}
