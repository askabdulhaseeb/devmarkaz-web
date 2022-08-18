import 'package:flutter/material.dart';

import '../../utilities/app_images.dart';

class AboutMobileview extends StatelessWidget {
  const AboutMobileview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SelectableText(
              'About Us',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            // const SizedBox(height: 30),
            Image.asset(AppImages.services),
            // const SizedBox(height: 16),
            const SelectableText(
              '''We are a group of highly professional exterts and together as a team, we cover almost all the design and development areas of Mobile Applications, Websites (Both Static and Dynamic) and Desktop Applications. We also provide services in UI/UX designs. Along with all these skillful services, we focus on client’s requirements and most importantly on client’s satisfaction, to build long-term professional relationships with our clients.''',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
                letterSpacing: 1,
              ),
            ),
          ],
        ));
  }
}
