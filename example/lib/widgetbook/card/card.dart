import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

final childWidget = Container(
  width: 100,
  height: 100,
);
const color = Colors.white;
const elevation = 2.0;
const borderOnForeground = false;
const padding = EdgeInsets.symmetric(horizontal: 12, vertical: 8);
const margin = EdgeInsets.all(1);
final borderRadius = BorderRadius.circular(10);
const border = Border(top: BorderSide(color: Colors.black));

const gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Colors.red, Colors.pink]);

WidgetbookUseCase BasicCard (BuildContext context) {
  return WidgetbookUseCase(
      name: 'Card/Basic',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Card/Basic",
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
                   DepCard(
                      color: white,
                      elevation: elevation,
                      borderOnForeground: borderOnForeground,
                      padding: padding,
                      margin: margin,
                      title:  DepListTile(
                        titleText: context.knobs.text(label: 'Card Title', initialValue: 'Card Title'),
                        icon: Icon(Icons.favorite_border),
                      ),
                      content: childWidget,
                      image: Image.network(
                          'https://cdn.pixabay.com/photo/2021/02/01/16/22/flamingo-5971206__340.jpg'),
                      imageOverlay: const NetworkImage(
                          'https://cdn.pixabay.com/photo/2021/02/01/16/22/flamingo-5971206__340.jpg'),
                    )
                  ],
                )),
          ));
}

WidgetbookUseCase GradientCard(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Card/Gradient',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Card/Gradient",
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
                    DepCard(
                      gradient: gradient,
                      elevation: elevation,
                      borderOnForeground: borderOnForeground,
                      padding: padding,
                      margin: margin,
                      title: DepListTile(
                        titleText: context.knobs.text(label: 'Card Title', initialValue: 'Card Title'),
                        icon: Icon(Icons.favorite_border),
                      ),
                      image: Image.network(
                          'https://cdn.pixabay.com/photo/2021/02/01/16/22/flamingo-5971206__340.jpg'),
                      imageOverlay: const NetworkImage(
                          'https://cdn.pixabay.com/photo/2021/02/01/16/22/flamingo-5971206__340.jpg'),
                    )
                  ],
                )),
          ));
}

WidgetbookUseCase ClipCard(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Card/Clip',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Card/Clip",
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
                    DepCard(
                      image: Image.network(
                        'https://images.unsplash.com/photo-1547721064-da6cfb341d50',
                      ),
                      title: DepListTile(
                        titleText: context.knobs.text(label: 'Card Title', initialValue: 'Card Title'),
                        icon: Icon(Icons.favorite_border),
                      ),
                      clipBehavior: Clip.none,
                      imageOverlay: const NetworkImage(
                          'https://cdn.pixabay.com/photo/2021/02/01/16/22/flamingo-5971206__340.jpg'),
                    )
                  ],
                )),
          ));
}

WidgetbookUseCase BackImageCard(BuildContext context) {
  return WidgetbookUseCase(
      name: 'Card/Background Image',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Card/Background Image",
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
                    DepCard(
                      image: Image.network(
                        'https://images.unsplash.com/photo-1547721064-da6cfb341d50',
                      ),
                      title: DepListTile(
                        titleText: context.knobs.text(label: 'Card Title', initialValue: 'Card Title'),
                        icon: Icon(Icons.favorite_border),
                      ),
                      boxFit: BoxFit.cover,
                      imageOverlay: NetworkImage(
                          'https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg'),
                    )
                  ],
                )),
          ));
}
