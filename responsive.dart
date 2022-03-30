import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget web, smartPhone, tablet;

  const ResponsiveLayout(
      {Key? key,
      required this.web,
      required this.smartPhone,
      required this.tablet})
      : super(key: key);

  static int webSize = 1280, tabletSize = 840, smartPhoneSize = 640;

  static bool isSmartPhone(BuildContext context) =>
      MediaQuery.of(context).size.width <= smartPhoneSize;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width <= tabletSize &&
      MediaQuery.of(context).size.width > smartPhoneSize;

  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width > tabletSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= smartPhoneSize) {
          return smartPhone;
        }
        if (constraints.maxWidth <= tabletSize) {
          return tablet;
        } else {
          return web;
        }
      },
    );
  }
}
