import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

String imageUrl =
    "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250";

Story BasicAvatar(BuildContext context) {
  return Story(
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
                          initial: AvatarShape.circle,
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
                      size: DepSize.LARGE,
                      maxRadius: context.knobs
                          .sliderInt(
                              label: 'Radius', initial: 50, max: 70, min: 50)
                          .toDouble(),
                    )
                  ],
                )),
          ));
}

Story BasicSubtileAvatar(BuildContext context) {
  return Story(
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
                          initial: cyan200,
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
                          initial: AvatarShape.circle,
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
                      size: DepSize.LARGE,
                      maxRadius: context.knobs.sliderInt(label: 'Radius', initial: 50, max: 70, min: 50).toDouble(),
                      child: DepText(
                        text: context.knobs
                            .text(label: '2 Letter Initials', initial: 'TB'),
                      ),
                    )
                  ],
                )),
          ));
}

Story BadgeAvatar(BuildContext context) {
  return Story(
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
                          size: DepSize.LARGE,
                          maxRadius: context.knobs
                              .sliderInt(
                                  label: 'Radius',
                                  initial: 50,
                                  max: 70,
                                  min: 50)
                              .toDouble(),
                          shape: AvatarShape.circle,
                        ),
                        const Positioned(
                          bottom: 10,
                          right: 6,
                          child: DepBadge(
                            color: green500,
                            size: DepSize.SMALL,
                            shape: BadgeShape.circle,
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ));
}

Story BadgeSubtleAvatar(BuildContext context) {
  return Story(
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
                          initial: cyan200,
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
                          size: DepSize.LARGE,
                          maxRadius: context.knobs
                              .sliderInt(
                                  label: 'Radius',
                                  initial: 50,
                                  max: 70,
                                  min: 50)
                              .toDouble(),
                          shape: AvatarShape.circle,
                          child: DepText(
                            text: context.knobs.text(
                                label: '2 Letter Initials', initial: 'TB'),
                          ),
                        ),
                        const Positioned(
                          bottom: 10,
                          right: 6,
                          child: DepBadge(
                            color: green500,
                            size: DepSize.SMALL,
                            shape: BadgeShape.circle,
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ));
}
