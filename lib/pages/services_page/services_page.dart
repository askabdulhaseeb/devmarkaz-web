import 'package:flutter/material.dart';

import '../../widgets/custom_widgets/responsive_layout.dart';
import 'services_mobileview.dart';
import 'services_webview.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);
  static const String route = 'services';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: ServicesMobileview(),
      tablet: ServicesWebview(),
      desktop: ServicesWebview(),
    );
  }
}
