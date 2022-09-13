import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utilities/app_colors.dart';
import '../../utilities/app_images.dart';
import '../../widgets/service_card.dart';

class ServicesMobileview extends StatelessWidget {
  const ServicesMobileview({Key? key}) : super(key: key);

  static const List<Widget> _sevices = <Widget>[
    ServiceCard(
      imagePath: AppImages.mobileGIF,
      title: 'App Development',
      subtitle:
          'We are capable of delivering native, as well as hybrid mobile applications as per the requirments of our clients.',
      padding: EdgeInsets.all(32),
    ),
    ServiceCard(
      imagePath: AppImages.websiteGIF,
      title: 'Web Development',
      subtitle:
          'We are capable of delivering static, as well as dynamic websites as per the requirments of our clients.',
      padding: EdgeInsets.all(32),
    ),
    ServiceCard(
      imagePath: AppImages.desktopGIF,
      title: 'Desktop Developer',
      subtitle:
          'We are capable of delivering the desktop applications (for windows/mac/linux) as per the requirments of our clients.',
      padding: EdgeInsets.all(32),
    ),
    ServiceCard(
      imagePath: AppImages.uiGIF,
      title: 'UI/UX Design',
      subtitle:
          'We are capable of delivering Adobe XD and Figma designs for an interactive and responsive applications or websites as per requirments of our clients.',
      padding: EdgeInsets.all(32),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.lightPrimary,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 24),
            const SelectableText(
              'Our Service',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            CarouselSlider(
              items: _sevices.map((Widget pro) => pro).toList(),
              options: CarouselOptions(
                aspectRatio: 5 / 4,
                viewportFraction: 0.6,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: true,
              ),
            ),
          ],
        ));
  }
}
