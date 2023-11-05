import 'package:flutter/material.dart';

Widget horizontalSpaceTiny = const SizedBox(width: 5.0);
Widget horizontalSpaceSmall = const SizedBox(width: (10.0));
Widget horizontalSpaceSmallY = const SizedBox(width: (15.0));
Widget horizontalSpaceSmallX = const SizedBox(width: (20.0));
Widget horizontalSpaceMedium = const SizedBox(width: (25.0));

Widget verticalSpaceTiny = const SizedBox(height: (5.0));
Widget verticalSpaceSmall = const SizedBox(height: (10.0));
Widget verticalSpaceSmallY = const SizedBox(height: (15.0));
Widget verticalSpaceSmallX = const SizedBox(height: (20.0));
Widget verticalSpaceMedium = const SizedBox(height: (25.0));
Widget verticalSpaceMediumX = const SizedBox(height: 35.0);
Widget verticalSpaceLarge = const SizedBox(height: (50.0));
Widget verticalSpaceMassive = const SizedBox(height: (120.0));

double screenWidth(BuildContext context) =>
    MediaQuery.of(context).size.width +
    MediaQuery.of(context).padding.left +
    MediaQuery.of(context).padding.right;

double screenHeight(BuildContext context) =>
    MediaQuery.of(context).size.height +
    MediaQuery.of(context).padding.top +
    MediaQuery.of(context).padding.bottom;
