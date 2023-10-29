import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

const bgImage = NetworkImage(
  'https://images.unsplash.com/photo-1547721064-da6cfb341d50',
);
const padding = EdgeInsets.all(5);
const margin = EdgeInsets.all(5);
const boxFit = BoxFit.cover;
WidgetbookUseCase basicImage(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Image/Basic',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Image/Basic",
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
                    DepImageOverlay(
                      height: 100,
                      width: 100,
                      image: bgImage,
                      color: primaryColor,
                      border: Border.all(color: red500),
                      borderRadius: BorderRadius.circular(context.knobs.slider(
                          label: 'Border Radius',
                          description: 'Select border radius',
                          initialValue: 10,
                          max: 20,
                          min: 5)),
                      padding: padding,
                      margin: margin,
                    )
                  ]))));
}

WidgetbookUseCase overlayImage(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Image/Overlay',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Image/Overlay",
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
                    DepImageOverlay(
                      height: 100,
                      width: 100,
                      image: bgImage,
                      colorFilter: ColorFilter.mode(
                          context.knobs.options(
                            label: 'Overlay Color',
                            description: 'Overlay color for image.',
                            options: const [
                              Option(
                                label: 'Red500',
                                value: red500,
                              ),
                              Option(
                                label: 'Blue500',
                                value: blue500,
                              ),
                              Option(
                                label: 'Green500',
                                value: green500,
                              )
                            ],
                          ),
                          BlendMode.colorBurn),
                    )
                  ]))));
}

WidgetbookUseCase childImage(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Image/ChildWidget',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Image/ChildWidget",
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
                    DepImageOverlay(
                      height: 100,
                      width: 100,
                      image: bgImage,
                      color: primaryColor,
                      border: Border.all(color: red500),
                      borderRadius: BorderRadius.circular(context.knobs.slider(
                          label: 'Border Radius',
                          description: 'Select border radius',
                          initialValue: 10,
                          max: 20,
                          min: 5)),
                      padding: padding,
                      margin: margin,
                      alignment: context.knobs.options(
                        label: 'Alignment',
                        description: 'Select Alignment',
                        options: const [
                          Option(
                            label: 'Top-center',
                            value: Alignment.topCenter,
                          ),
                          Option(
                            label: 'Top-left',
                            value: Alignment.topLeft,
                          ),
                          Option(
                            label: 'Top-right',
                            value: Alignment.topRight,
                          ),
                          Option(
                            label: 'Center',
                            value: Alignment.center,
                          ),
                          Option(
                            label: 'Center-left',
                            value: Alignment.centerLeft,
                          ),
                          Option(
                            label: 'Center-right',
                            value: Alignment.centerRight,
                          ),
                          Option(
                            label: 'Bottom-center',
                            value: Alignment.bottomCenter,
                          ),
                          Option(
                            label: 'Bottom-left',
                            value: Alignment.bottomLeft,
                          ),
                          Option(
                            label: 'Bottom-right',
                            value: Alignment.bottomRight,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.car_rental,
                        color: white,
                      ),
                    )
                  ]))));
}
