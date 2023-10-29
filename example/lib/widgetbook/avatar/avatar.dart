import 'package:deposits_ui_kit/deposits_ui_kit.dart';
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
                      shape: context.knobs.options(
                          label: 'Circle Shaoe',
                          description: 'Select Shape.',
                          options: const [
                            Option(
                              label: 'Circle',
                              value: AvatarShape.circle,
                            ),
                            Option(
                              label: 'Square',
                              value: AvatarShape.square,
                            ),
                            Option(
                              label: 'Standard',
                              value: AvatarShape.standard,
                            ),
                          ]),
                      size: DepSize.large,
                      maxRadius: context.knobs
                          .slider(
                              label: 'Radius',
                              initialValue: 30,
                              max: 50,
                              min: 30)
                          .toDouble(),
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
                      backgroundColor: context.knobs.options(
                          label: 'Color Shade',
                          description: 'Select Color Shade.',
                          options: const [
                            Option(
                              label: 'cyan200',
                              value: cyan200,
                            ),
                            Option(
                              label: 'cyan600',
                              value: cyan600,
                            ),
                            Option(
                              label: 'green200',
                              value: green200,
                            ),
                            Option(
                              label: 'green600',
                              value: green600,
                            ),
                            Option(
                              label: 'orange200',
                              value: orange200,
                            ),
                            Option(
                              label: 'orange600',
                              value: orange600,
                            ),
                            Option(
                              label: 'danger200',
                              value: red200,
                            ),
                            Option(
                              label: 'danger600',
                              value: red600,
                            ),
                            Option(
                              label: 'neutral200',
                              value: gray200,
                            ),
                            Option(
                              label: 'neutral600',
                              value: gray600,
                            ),
                            Option(
                              label: 'blue200',
                              value: blue200,
                            ),
                            Option(
                              label: 'blue600',
                              value: blue600,
                            ),
                          ]),
                      shape: context.knobs.options(
                          label: 'Circle Shaoe',
                          description: 'Select Shape.',
                          options: const [
                            Option(
                              label: 'Circle',
                              value: AvatarShape.circle,
                            ),
                            Option(
                              label: 'Square',
                              value: AvatarShape.square,
                            ),
                            Option(
                              label: 'Standard',
                              value: AvatarShape.standard,
                            ),
                          ]),
                      size: DepSize.large,
                      maxRadius: context.knobs
                          .slider(
                              label: 'Radius',
                              initialValue: 30,
                              max: 40,
                              min: 30)
                          .toDouble(),
                      child: DepText(
                        text: context.knobs.text(
                            label: '2 Letter Initials', initialValue: 'TB'),
                        font: context.knobs
                            .slider(
                                label: 'Font-size',
                                initialValue: 14,
                                max: 20,
                                min: 14)
                            .toDouble(),
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
                          maxRadius: context.knobs
                              .slider(
                                  label: 'Radius',
                                  initialValue: 45,
                                  max: 50,
                                  min: 45)
                              .toDouble(),
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
                          backgroundColor: context.knobs.options(
                              label: 'Color Shade',
                              description: 'Select Color Shade.',
                              options: const [
                                Option(
                                  label: 'cyan200',
                                  value: cyan200,
                                ),
                                Option(
                                  label: 'cyan600',
                                  value: cyan600,
                                ),
                                Option(
                                  label: 'green200',
                                  value: green200,
                                ),
                                Option(
                                  label: 'green600',
                                  value: green600,
                                ),
                                Option(
                                  label: 'orange200',
                                  value: orange200,
                                ),
                                Option(
                                  label: 'orange600',
                                  value: orange600,
                                ),
                                Option(
                                  label: 'danger200',
                                  value: red200,
                                ),
                                Option(
                                  label: 'danger600',
                                  value: red600,
                                ),
                                Option(
                                  label: 'neutral200',
                                  value: gray200,
                                ),
                                Option(
                                  label: 'neutral600',
                                  value: gray600,
                                ),
                                Option(
                                  label: 'blue200',
                                  value: blue200,
                                ),
                                Option(
                                  label: 'blue600',
                                  value: blue600,
                                ),
                              ]),
                          size: DepSize.large,
                          maxRadius: context.knobs
                              .slider(
                                  label: 'Radius',
                                  initialValue: 45,
                                  max: 50,
                                  min: 45)
                              .toDouble(),
                          shape: AvatarShape.circle,
                          child: DepText(
                            font: context.knobs
                                .slider(
                                    label: 'Font-size',
                                    initialValue: 25,
                                    max: 30,
                                    min: 25)
                                .toDouble(),
                            fntweight: FontWeight.w400,
                            text: context.knobs.text(
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
