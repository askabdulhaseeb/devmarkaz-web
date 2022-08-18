import 'package:flutter/material.dart';

import '../../utilities/app_images.dart';

class FooterAboutUs extends StatelessWidget {
  const FooterAboutUs({required this.boxSize, Key? key}) : super(key: key);

  final double boxSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: boxSize,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                height: 60,
                width: 60,
                child: Image.asset(AppImages.logoWhite),
              ),
              const SizedBox(width: 10),
              const SelectableText(
                'DevMarkaz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const SelectableText(
            'Our software house is capable of developing all types of software applications for Mobile, Web, and Desktop with the best technologies that exist today.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 0.6,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
