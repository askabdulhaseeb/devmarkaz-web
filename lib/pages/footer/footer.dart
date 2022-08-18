import 'package:flutter/material.dart';

import '../../widgets/custom_widgets/responsive_layout.dart';
import 'footer_webview.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: SizedBox(),
      tablet: FooterWebview(),
      desktop: FooterWebview(),
    );
  }
}
