import 'package:flutter/material.dart';

import '../../utilities/app_colors.dart';
import '../../utilities/app_images.dart';
import '../../widgets/service_card.dart';

class ServicesMobileview extends StatelessWidget {
  const ServicesMobileview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.width,
          width: double.infinity,
          color: AppColors.lightPrimary,
        ),
        Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              const SelectableText(
                'Our Service',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView(
                  primary: false,
                  children: const <Widget>[
                    ServiceCard(
                      imagePath: AppImages.logoBlack,
                      title: 'App Development',
                      subtitle:
                          'We are capable of delivering native, as well as hybrid mobile applications as per the requirments of our clients.',
                      padding: EdgeInsets.all(32),
                    ),
                    ServiceCard(
                      imagePath: AppImages.logoBlack,
                      title: 'Web Development',
                      subtitle:
                          'We are capable of delivering static, as well as dynamic websites as per the requirments of our clients.',
                      padding: EdgeInsets.all(32),
                    ),
                    ServiceCard(
                      imagePath: AppImages.logoBlack,
                      title: 'Desktop Developer',
                      subtitle:
                          'We are capable of delivering the desktop applications (for windows/mac/linux) as per the requirments of our clients.',
                      padding: EdgeInsets.all(32),
                    ),
                    ServiceCard(
                      imagePath: AppImages.logoBlack,
                      title: 'UI/UX Design',
                      subtitle:
                          'We are capable of delivering Adobe XD and Figma designs for an interactive and responsive applications or websites as per requirments of our clients.',
                      padding: EdgeInsets.all(32),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
