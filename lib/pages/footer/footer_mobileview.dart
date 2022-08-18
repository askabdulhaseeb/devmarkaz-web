import 'package:flutter/material.dart';

import '../../utilities/utilities.dart';
import '../../widgets/footer/copyright.dart';
import '../../widgets/footer/footer_about_us.dart';
import '../../widgets/footer/footer_quick_links.dart';
import '../../widgets/footer/footer_reach_us.dart';
import '../../widgets/footer/footer_services.dart';

class FooterMobileview extends StatelessWidget {
  const FooterMobileview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Utilities.padding / 2,
        vertical: Utilities.padding / 4,
      ),
      color: Theme.of(context).colorScheme.secondary,
      child: Column(
        children: const <Widget>[
          SizedBox(height: 32),
          FooterAboutUs(boxSize: double.infinity),
          FooterQuickLinks(boxSize: double.infinity),
          FooterServices(boxSize: double.infinity),
          FooterReachUs(boxSize: double.infinity),
          Copyright(),
        ],
      ),
    );
  }
}
