import 'package:flutter/material.dart';

import '../../utilities/app_images.dart';

class LandingAppBarMobileview extends StatelessWidget {
  const LandingAppBarMobileview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 40,
          child: Image.asset(AppImages.logoWhite),
        ),
        const SizedBox(width: 8),
        const SelectableText(
          'DevMarkaz',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
