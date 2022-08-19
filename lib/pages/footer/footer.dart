import 'package:flutter/material.dart';

import '../../widgets/custom_widgets/responsive_layout.dart';
import 'footer_mobileview.dart';
import 'footer_webview.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);
  static const String route = 'footer';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: FooterMobileview(),
      tablet: FooterWebview(),
      desktop: FooterWebview(),
    );
  }
}
