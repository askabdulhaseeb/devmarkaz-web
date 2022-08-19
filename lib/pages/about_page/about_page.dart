import 'package:flutter/material.dart';

import '../../widgets/custom_widgets/responsive_layout.dart';
import 'about_mobileview.dart';
import 'about_webview.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  static const String route = 'about';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: AboutMobileview(),
      tablet: AboutWebview(),
      desktop: AboutWebview(),
    );
  }
}
