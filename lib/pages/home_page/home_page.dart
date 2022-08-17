import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utilities/app_colors.dart';
import '../../utilities/app_images.dart';
import '../../utilities/utilities.dart';
import '../../widgets/circular_avatar_row.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String route = '/home';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          color: AppColors.lightPrimary,
        ),
        // Positioned(
        //   child: Container(
        //     height: double.infinity,
        //     width: size.width / 2,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
        //       color: Theme.of(context).colorScheme.secondary,
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: size.width / 2,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 80,
                              backgroundColor: Colors.white,
                              child: SizedBox(
                                height: 120,
                                child: Image.asset(AppImages.logoBlack),
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Flexible(
                              child: AutoSizeText(
                                'WE BUILD SOFTWARE TO\nAUTOMATE ALL YOUR OPERATIONS\nWITH A SEAMLESS EXPERIENCE.',
                                maxLines: 4,
                                maxFontSize: 30,
                                minFontSize: 18,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const SelectableText(
                          '''We are DevMarkaz and we are a team of highly professional experts in the software development market. Our software house is capable of developing all types of software applications for Mobile, Web, and Desktop with the best technologies that exist today.''',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white60,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(child: Lottie.asset(AppImages.computerJSON)),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: Utilities.padding,
          child: Column(
            children: const <Widget>[
              CircularAvatarRow(),
              CircularAvatarRow(),
              CircularAvatarRow(),
              CircularAvatarRow(),
              CircularAvatarRow(),
              CircularAvatarRow(),
              CircularAvatarRow(),
              CircularAvatarRow(),
            ],
          ),
        ),
      ],
    );
  }
}
