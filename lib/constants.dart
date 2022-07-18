import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff1c1c1c);
const kBackgroundColor = Color(0xff1c1c1c);
const kContainer = Color(0xff1c1c1c);
const kFontPrimaryColor = Color(0xffffffff);
const kFontTextColor = Color(0xffaaaaaa);
const kFontSecondTextColor = Color(0xff888888);
const kInputColor = Color(0xffaaaaaa);
const kIconColor = Color(0xffffffff);
const kHintextColor = Color(0xffaaaaaa);
const kLinkTextColor = Color(0xff8e815e);
const kButtonColor = Color(0xffe3d6b3);
const kTextButtonColor = Color(0xff1c1c1c);
const kInputSearchColor = Color(0xff333333);
const kCicleColor = Color(0xffd6c28d);
const kThemeTextColor = Color(0xFF00B9AB);

const EdgeInsets kDefaultHorizonPadding = EdgeInsets.symmetric(horizontal: 21);
bool isPhone(BuildContext context) => MediaQuery.of(context).size.shortestSide < 550;

SizedBox kDefaultHSpacing(BuildContext context) {
  final isPhone = MediaQuery.of(context).size.shortestSide < 550;
  return SizedBox(height: isPhone ? 8 : 18);
}

SizedBox kDefaultWSpacing(BuildContext context) {
  final isPhone = MediaQuery.of(context).size.shortestSide < 550;
  return SizedBox(width: isPhone ? 8 : 18);
}

SizedBox kLargeHSpacing(BuildContext context) {
  final isPhone = MediaQuery.of(context).size.shortestSide < 550;
  return SizedBox(height: isPhone ? 14 : 24);
}

SizedBox kLargeWSpacing(BuildContext context) {
  final isPhone = MediaQuery.of(context).size.shortestSide < 550;
  return SizedBox(width: isPhone ? 14 : 24);
}

SizedBox kHugeHSpaceing(BuildContext context) {
  final isPhone = MediaQuery.of(context).size.shortestSide < 550;
  return SizedBox(height: isPhone ? 36 : 46);
}

SizedBox kHugeWSpaceing(BuildContext context) {
  final isPhone = MediaQuery.of(context).size.shortestSide < 550;
  return SizedBox(width: isPhone ? 36 : 46);
}

const double kDefaultTabletMaxWidth = 880;
