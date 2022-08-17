import 'package:flutter/material.dart';

import '../../utilities/app_colors.dart';
import '../../utilities/app_images.dart';
import '../../utilities/utilities.dart';
import '../../widgets/circular_avatar_row.dart';
import '../../widgets/service_card.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 300,
          width: double.infinity,
          color: AppColors.lightPrimary,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Utilities.padding),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      CircularAvatarRow(),
                      CircularAvatarRow()
                    ],
                  ),
                  const SelectableText(
                    'Our Service',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 120),
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 380,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    ServiceCard(
                      imagePath: AppImages.logoBlack,
                      title: 'App Development',
                      subtitle:
                          'We are capable of delivering native, as well as hybrid mobile applications as per the requirments of our clients.',
                    ),
                    ServiceCard(
                      imagePath: AppImages.logoBlack,
                      title: 'Web Development',
                      subtitle:
                          'We are capable of delivering static, as well as dynamic websites as per the requirments of our clients.',
                    ),
                    ServiceCard(
                      imagePath: AppImages.logoBlack,
                      title: 'Desktop Developer',
                      subtitle:
                          'We are capable of delivering the desktop applications (for windows/mac/linux) as per the requirments of our clients.',
                    ),
                    ServiceCard(
                      imagePath: AppImages.logoBlack,
                      title: 'UI/UX Design',
                      subtitle:
                          'We are capable of delivering Adobe XD and Figma designs for an interactive and responsive applications or websites as per requirments of our clients.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: Utilities.padding,
          child: Column(
            children: <Widget>[
              CircularAvatarRow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              ),
              CircularAvatarRow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              ),
              CircularAvatarRow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              ),
              CircularAvatarRow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              ),
              CircularAvatarRow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              ),
              CircularAvatarRow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              ),
              CircularAvatarRow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
