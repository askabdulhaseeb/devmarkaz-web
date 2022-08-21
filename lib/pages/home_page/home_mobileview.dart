import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utilities/app_colors.dart';
import '../../utilities/app_images.dart';

class HomeMobileview extends StatelessWidget {
  const HomeMobileview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightPrimary,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset(AppImages.computerGIF),
              ),
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: SizedBox(
                    height: 80,
                    child: Image.asset(AppImages.logoBlack),
                  ),
                ),
                const SizedBox(width: 16),
                const Flexible(
                  child: AutoSizeText(
                    'WE BUILD SOFTWARE TO AUTOMATE ALL YOUR OPERATIONS WITH A SEAMLESS EXPERIENCE.',
                    maxLines: 4,
                    maxFontSize: 20,
                    minFontSize: 16,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SelectableText(
              '''We are DevMarkaz and we are a team of highly professional experts in the software development market. Our software house is capable of developing all types of software applications for Mobile, Web, and Desktop with the best technologies that exist today.''',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white60,
                fontWeight: FontWeight.w300,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Text(
                      'Contect us',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_circle_right_outlined, color: Colors.white)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
