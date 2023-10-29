import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

final Key bottomSheetKey = UniqueKey();
final Key contentKey = UniqueKey();
final DepBottomSheetController _controller = DepBottomSheetController();

WidgetbookUseCase basicBottomSheet(BuildContext context) {
  return WidgetbookUseCase(
      name: 'BottomSheet/Basic',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Basic Bottom Sheet",
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
                    DepBottomSheet(
                      key: bottomSheetKey,
                      controller: _controller,
                      stickyHeaderHeight: 70,
                      stickyHeader: const DepListTile(
                        avatar: DepAvatar(
                          backgroundColor: Colors.amber,
                        ),
                        titleText: 'Header Title',
                        subTitleText: '11 minutes ago',
                      ),
                      contentBody: ListView(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) =>
                                DepListTile(
                              color: Colors.black12,
                              avatar: const DepAvatar(
                                backgroundColor: Colors.tealAccent,
                                size: 20,
                              ),
                              subTitleText: 'Content Title',
                              icon: DepNormalButton(
                                onPressed: () {},
                                color: Colors.teal,
                                child: const Text(
                                  'Send',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const Text('Content'),
                        ],
                      ),
                    )
                  ],
                )),
          ));
}

WidgetbookUseCase footerBottomSheet(BuildContext context) {
  return WidgetbookUseCase(
      name: 'BottomSheet/Footer',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Footer Bottom Sheet",
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
                    DepBottomSheet(
                      key: bottomSheetKey,
                      controller: _controller,
                      stickyHeaderHeight: 70,
                      stickyHeader: const DepListTile(
                        avatar: DepAvatar(
                          backgroundColor: Colors.amber,
                        ),
                        titleText: 'Header Title',
                        subTitleText: '11 minutes ago',
                      ),
                      contentBody: ListView(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        children: [
                          const Text('Content GetWidget'),
                          Container(
                            padding: const EdgeInsets.all(16),
                            child: const Text(
                                'Get Widget is one of the largest Flutter open-source '
                                'UI library for mobile or web apps. It has more than 1000+ pre-built reusable widgets.'),
                          ),
                        ],
                      ),
                      stickyFooterHeight: 60,
                      stickyFooter: Container(
                        alignment: AlignmentDirectional.center,
                        width: 444,
                        color: Colors.amber,
                        child: const Text('Footer Title'),
                      ),
                    )
                  ],
                )),
          ));
}

WidgetbookUseCase expandableBottomSheet(BuildContext context) {
  return WidgetbookUseCase(
      name: 'BottomSheet/Expandable',
      builder: (context) => Scaffold(
            appBar: DepAppbarWidget(
              titleWidget: const DepText(
                text: "Expandable Bottom Sheet",
                txtColor: Colors.white,
                font: 18,
              ),
              addBackButton: false,
              addCloseButton: false,
              backgroundColor: primaryColor,
            ),
            floatingActionButton: FloatingActionButton(
                backgroundColor: greenColor,
                child: _controller.isBottomSheetOpened
                    ? const Icon(Icons.keyboard_arrow_down)
                    : const Icon(Icons.keyboard_arrow_up),
                onPressed: () {
                  _controller.isBottomSheetOpened
                      ? _controller.hideBottomSheet()
                      : _controller.showBottomSheet();
                }),
            bottomSheet: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DepBottomSheet(
                      key: bottomSheetKey,
                      controller: _controller,
                      enableExpandableContent: true,
                      stickyHeaderHeight: 70,
                      stickyHeader: const DepListTile(
                        avatar: DepAvatar(
                          backgroundColor: Colors.amber,
                        ),
                        titleText: 'Header Title',
                        subTitleText: '11 minutes ago',
                      ),
                      contentBody: ListView(
                        key: contentKey,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        children: [
                          const Text('Content GetWidget'),
                          Container(
                            padding: const EdgeInsets.all(16),
                            child: const Text(
                                'Get Widget is one of the largest Flutter open-source '
                                'UI library for mobile or web apps. It has more than 1000+ pre-built reusable widgets.'),
                          ),
                        ],
                      ),
                      stickyFooterHeight: 60,
                      stickyFooter: Container(
                        alignment: AlignmentDirectional.center,
                        width: 444,
                        color: Colors.amber,
                        child: const Text('Footer Title'),
                      ),
                    )
                  ],
                )),
          ));
}
