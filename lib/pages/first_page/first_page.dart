import 'package:flutter/material.dart';

import '../../widgets/custom_widgets/responsive_layout.dart';
import 'first_mobileview.dart';
import 'first_webview.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: FirstPageMobileview(),
      tablet: FirstPageWebview(),
      desktop: FirstPageWebview(),
    );
  }
}
