import 'package:flutter/material.dart';

import '../../utilities/utilities.dart';
import '../../widgets/footer/copyright.dart';
import '../../widgets/footer/footer_about_us.dart';
import '../../widgets/footer/footer_quick_links.dart';
import '../../widgets/footer/footer_reach_us.dart';
import '../../widgets/footer/footer_services.dart';

class FooterWebview extends StatelessWidget {
  const FooterWebview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double boxSize =
        (MediaQuery.of(context).size.width / 4) - (Utilities.padding * 2);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Utilities.padding,
        vertical: Utilities.padding / 2,
      ),
      color: Theme.of(context).colorScheme.secondary,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FooterAboutUs(boxSize: boxSize),
              FooterQuickLinks(boxSize: boxSize),
              FooterServices(boxSize: boxSize),
              FooterReachUs(boxSize: boxSize),
            ],
          ),
          const Copyright(),
        ],
      ),
    );
  }
}
