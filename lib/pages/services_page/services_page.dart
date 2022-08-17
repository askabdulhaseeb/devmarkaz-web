import 'package:flutter/material.dart';

import '../../utilities/app_colors.dart';
import '../../utilities/app_images.dart';
import '../../utilities/utilities.dart';
import '../../widgets/circular_avatar_row.dart';
import '../../widgets/custom_widgets/responsive_layout.dart';
import '../../widgets/service_card.dart';
import 'services_webview.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: SizedBox(),
      desktop: ServicesWebview(),
    );
  }
}
