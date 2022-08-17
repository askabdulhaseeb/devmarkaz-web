import 'package:flutter/material.dart';

import '../../widgets/custom_widgets/responsive_layout.dart';
import 'testimony_webview.dart';

class TestimonyPage extends StatelessWidget {
  const TestimonyPage({Key? key}) : super(key: key);
  static const String route = '/testimonies';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: SizedBox(),
      desktop: TestimonyWebview(),
    );
  }
}
