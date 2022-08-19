import 'package:flutter/material.dart';

import '../../widgets/custom_widgets/responsive_layout.dart';
import 'home_mobileview.dart';
import 'home_webview.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String route = 'home';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: HomeMobileview(),
      tablet: HomeWebview(),
      desktop: HomeWebview(),
    );
  }
}
