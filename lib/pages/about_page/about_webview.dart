import 'package:flutter/material.dart';

import '../../utilities/app_images.dart';
import '../../utilities/utilities.dart';
import '../../widgets/circular_avatar_row.dart';


class AboutWebview extends StatelessWidget {
  const AboutWebview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Utilities.padding),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const SizedBox(width: 120),
              const SelectableText(
                'About Us',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: <Widget>[
                  CircularAvatarRow(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  ),
                  CircularAvatarRow(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Image.asset(AppImages.services),
              ),
              const SizedBox(width: 16),
              const Expanded(
                flex: 3,
                child: SelectableText(
                  '''We are a group of highly professional exterts and together as a team, we cover almost all the design and development areas of Mobile Applications, Websites (Both Static and Dynamic) and Desktop Applications. We also provide services in UI/UX designs. Along with all these skillful services, we focus on client’s requirements and most importantly on client’s satisfaction, to build long-term professional relationships with our clients.''',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
